<!--
  TimelineRow — a single phase entry: phase pill + day badge + content.

  Props:
    phase    string                     required (e.g. "Prep", "Battle", "Triage")
    day      string                     required (e.g. "Day 1", "Sat 12:00 UTC")
    title    string                     optional headline
    tone     'brand'|'warn'|'danger'    default: 'brand' — controls phase pill color

  Slot:
    default — body content
-->
<script setup>
defineProps({
  phase: { type: String, required: true },
  day: { type: String, required: true },
  title: { type: String, default: '' },
  tone: {
    type: String,
    default: 'brand',
    validator: (v) => ['brand', 'warn', 'danger'].includes(v),
  },
})
</script>

<template>
  <div :class="['bb-timeline', `bb-timeline--${tone}`]">
    <div class="bb-timeline__meta">
      <span class="bb-timeline__phase">{{ phase }}</span>
      <span class="bb-timeline__day">{{ day }}</span>
    </div>
    <div class="bb-timeline__body">
      <p v-if="title" class="bb-timeline__title">{{ title }}</p>
      <div class="bb-timeline__content"><slot /></div>
    </div>
  </div>
</template>

<style scoped>
.bb-timeline {
  display: grid;
  grid-template-columns: minmax(120px, 160px) 1fr;
  gap: 1rem;
  padding: 0.875rem 0;
  border-bottom: 1px solid var(--vp-c-divider);
  align-items: start;
}
.bb-timeline:last-of-type { border-bottom: none; }
.bb-timeline__meta { display: flex; flex-direction: column; gap: 0.3rem; }
.bb-timeline__phase {
  display: inline-block;
  padding: 0.15rem 0.55rem;
  border-radius: 999px;
  font-size: 0.7rem;
  font-weight: 700;
  letter-spacing: 0.06em;
  text-transform: uppercase;
  width: fit-content;
}
.bb-timeline--brand  .bb-timeline__phase { background: var(--vp-c-brand-soft);             color: var(--vp-c-brand-1); }
.bb-timeline--warn   .bb-timeline__phase { background: var(--bb-callout-warn-bg);          color: var(--bb-callout-warn); }
.bb-timeline--danger .bb-timeline__phase { background: var(--bb-callout-danger-bg);        color: var(--bb-callout-danger); }

.bb-timeline__day {
  font-family: 'Georgia', 'Times New Roman', serif;
  font-weight: 700;
  color: var(--vp-c-text-1);
  font-size: 1rem;
  line-height: 1.2;
}
.bb-timeline__title {
  font-weight: 600;
  margin: 0 0 0.4rem;
}
.bb-timeline__content :deep(p:first-child) { margin-top: 0; }
.bb-timeline__content :deep(p:last-child)  { margin-bottom: 0; }

@media (max-width: 640px) {
  .bb-timeline { grid-template-columns: 1fr; gap: 0.4rem; padding: 0.75rem 0; }
}
</style>
