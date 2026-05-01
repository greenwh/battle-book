<!--
  TroopRatio — horizontal stacked bar of Inf / Lan / Mar percentages.

  Props:
    infantry  number  required, 0–100
    lancer    number  required, 0–100
    marksman  number  required, 0–100
    label     string  optional title above the bar (e.g. "Castle Attack Lead")

  Numbers should sum to 100 for a clean visual; mismatches still render but
  the bar is normalized so it always fills the row.
-->
<script setup>
import { computed } from 'vue'

const props = defineProps({
  infantry: { type: Number, required: true },
  lancer: { type: Number, required: true },
  marksman: { type: Number, required: true },
  label: { type: String, default: '' },
})

const total = computed(() => Math.max(props.infantry + props.lancer + props.marksman, 1))
const pct = (n) => `${(n / total.value) * 100}%`
</script>

<template>
  <div class="bb-ratio">
    <div v-if="label" class="bb-ratio__label">{{ label }}</div>
    <div class="bb-ratio__bar" role="img" :aria-label="`${infantry} infantry, ${lancer} lancer, ${marksman} marksman`">
      <span class="bb-ratio__seg bb-ratio__seg--inf" :style="{ width: pct(infantry) }">
        <span v-if="infantry >= 8" class="bb-ratio__seg-num">{{ infantry }}</span>
      </span>
      <span class="bb-ratio__seg bb-ratio__seg--lan" :style="{ width: pct(lancer) }">
        <span v-if="lancer >= 8" class="bb-ratio__seg-num">{{ lancer }}</span>
      </span>
      <span class="bb-ratio__seg bb-ratio__seg--mar" :style="{ width: pct(marksman) }">
        <span v-if="marksman >= 8" class="bb-ratio__seg-num">{{ marksman }}</span>
      </span>
    </div>
    <div class="bb-ratio__legend">
      <span class="bb-ratio__key bb-ratio__key--inf">Infantry {{ infantry }}</span>
      <span class="bb-ratio__key bb-ratio__key--lan">Lancer {{ lancer }}</span>
      <span class="bb-ratio__key bb-ratio__key--mar">Marksman {{ marksman }}</span>
    </div>
  </div>
</template>

<style scoped>
.bb-ratio { margin: 1rem 0 1.25rem; }
.bb-ratio__label {
  font-weight: 600;
  font-family: 'Georgia', 'Times New Roman', serif;
  margin-bottom: 0.4rem;
  color: var(--vp-c-text-1);
}
.bb-ratio__bar {
  display: flex;
  height: 28px;
  border-radius: 6px;
  overflow: hidden;
  background: var(--vp-c-bg-soft);
  border: 1px solid var(--vp-c-divider);
}
.bb-ratio__seg {
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: 700;
  font-size: 0.85rem;
  color: #0d0f14;
  transition: width 0.3s ease;
  min-width: 0;
  overflow: hidden;
}
.bb-ratio__seg--inf { background: var(--bb-troop-infantry); }
.bb-ratio__seg--lan { background: var(--bb-troop-lancer); }
.bb-ratio__seg--mar { background: var(--bb-troop-marksman); }
.bb-ratio__seg-num { white-space: nowrap; }

.bb-ratio__legend {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem 1rem;
  margin-top: 0.5rem;
  font-size: 0.85rem;
  color: var(--vp-c-text-2);
}
.bb-ratio__key { display: inline-flex; align-items: center; gap: 0.4rem; }
.bb-ratio__key::before {
  content: '';
  width: 10px;
  height: 10px;
  border-radius: 2px;
  display: inline-block;
}
.bb-ratio__key--inf::before { background: var(--bb-troop-infantry); }
.bb-ratio__key--lan::before { background: var(--bb-troop-lancer); }
.bb-ratio__key--mar::before { background: var(--bb-troop-marksman); }

@media (max-width: 640px) {
  .bb-ratio__bar { height: 24px; }
  .bb-ratio__seg { font-size: 0.78rem; }
  .bb-ratio__legend { gap: 0.4rem 0.75rem; font-size: 0.78rem; }
}
</style>
