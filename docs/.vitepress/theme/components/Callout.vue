<!--
  Callout — boxed message with type-coded color, icon, and optional title.

  Props:
    type   'info' | 'tip' | 'warn' | 'danger'   default: 'info'
    title  string                                optional headline above body

  Slot:
    default — body content (Markdown parses inside if surrounded by blank lines)
-->
<script setup>
const props = defineProps({
  type: {
    type: String,
    default: 'info',
    validator: (v) => ['info', 'tip', 'warn', 'danger'].includes(v),
  },
  title: { type: String, default: '' },
})
</script>

<template>
  <aside :class="['bb-callout', `bb-callout--${type}`]" role="note">
    <div class="bb-callout__icon" aria-hidden="true">
      <svg v-if="type === 'info'" viewBox="0 0 24 24" width="20" height="20"><circle cx="12" cy="12" r="10" fill="none" stroke="currentColor" stroke-width="2"/><path d="M12 8.5v.01M12 11v6" stroke="currentColor" stroke-width="2" stroke-linecap="round"/></svg>
      <svg v-else-if="type === 'tip'" viewBox="0 0 24 24" width="20" height="20"><path d="M12 3a6 6 0 0 0-3.6 10.8c.6.5 1 1.2 1 2v.7h5.2v-.7c0-.8.4-1.5 1-2A6 6 0 0 0 12 3z" fill="none" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/><path d="M10 20h4M11 22h2" stroke="currentColor" stroke-width="2" stroke-linecap="round"/></svg>
      <svg v-else-if="type === 'warn'" viewBox="0 0 24 24" width="20" height="20"><path d="M12 3 2 20h20L12 3z" fill="none" stroke="currentColor" stroke-width="2" stroke-linejoin="round"/><path d="M12 10v4M12 17v.01" stroke="currentColor" stroke-width="2" stroke-linecap="round"/></svg>
      <svg v-else viewBox="0 0 24 24" width="20" height="20"><circle cx="12" cy="12" r="10" fill="none" stroke="currentColor" stroke-width="2"/><path d="m6 6 12 12" stroke="currentColor" stroke-width="2" stroke-linecap="round"/></svg>
    </div>
    <div class="bb-callout__body">
      <p v-if="title" class="bb-callout__title">{{ title }}</p>
      <div class="bb-callout__content">
        <slot />
      </div>
    </div>
  </aside>
</template>

<style scoped>
.bb-callout {
  display: flex;
  gap: 0.875rem;
  padding: 1rem 1.125rem;
  margin: 1.25rem 0;
  border-left: 4px solid var(--bb-tone, var(--bb-callout-info));
  background: var(--bb-tone-bg, var(--bb-callout-info-bg));
  border-radius: 6px;
  align-items: flex-start;
  line-height: 1.55;
}
.bb-callout--info   { --bb-tone: var(--bb-callout-info);   --bb-tone-bg: var(--bb-callout-info-bg); }
.bb-callout--tip    { --bb-tone: var(--bb-callout-tip);    --bb-tone-bg: var(--bb-callout-tip-bg); }
.bb-callout--warn   { --bb-tone: var(--bb-callout-warn);   --bb-tone-bg: var(--bb-callout-warn-bg); }
.bb-callout--danger { --bb-tone: var(--bb-callout-danger); --bb-tone-bg: var(--bb-callout-danger-bg); }

.bb-callout__icon {
  flex: 0 0 auto;
  color: var(--bb-tone);
  margin-top: 0.15rem;
}
.bb-callout__body { flex: 1 1 auto; min-width: 0; }
.bb-callout__title {
  margin: 0 0 0.4rem;
  font-weight: 700;
  color: var(--bb-tone);
  font-family: 'Georgia', 'Times New Roman', serif;
  letter-spacing: -0.01em;
}
.bb-callout__content :deep(p:first-child) { margin-top: 0; }
.bb-callout__content :deep(p:last-child)  { margin-bottom: 0; }

@media (max-width: 640px) {
  .bb-callout { padding: 0.875rem 1rem; gap: 0.75rem; }
}
</style>
