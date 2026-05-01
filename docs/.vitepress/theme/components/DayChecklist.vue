<!--
  DayChecklist — interactive checklist (in-session state only, no persistence).

  Props:
    items   Array<string | { label: string }>   required
    title   string   optional heading above list

  Behavior:
    Clicking an item toggles it. State lives in the component only; refreshing
    the page resets every box. Spec calls this out explicitly — if persistence
    becomes a requirement later, swap the ref for a localStorage-backed store.
-->
<script setup>
import { ref, computed } from 'vue'

const props = defineProps({
  items: { type: Array, required: true },
  title: { type: String, default: '' },
})

const normalized = computed(() =>
  props.items.map((it) => (typeof it === 'string' ? { label: it } : it))
)

const checked = ref(props.items.map(() => false))

function toggle(i) { checked.value[i] = !checked.value[i] }
const completed = computed(() => checked.value.filter(Boolean).length)
</script>

<template>
  <div class="bb-check">
    <div v-if="title || normalized.length" class="bb-check__head">
      <span v-if="title" class="bb-check__title">{{ title }}</span>
      <span class="bb-check__count">{{ completed }} / {{ normalized.length }}</span>
    </div>
    <ul class="bb-check__list">
      <li
        v-for="(item, i) in normalized"
        :key="i"
        :class="['bb-check__item', { 'bb-check__item--done': checked[i] }]"
        @click="toggle(i)"
      >
        <span class="bb-check__box" :aria-checked="checked[i]" role="checkbox" tabindex="0" @keydown.enter.prevent="toggle(i)" @keydown.space.prevent="toggle(i)">
          <svg v-if="checked[i]" viewBox="0 0 16 16" width="14" height="14"><path d="M3 8.5 6.5 12 13 4.5" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"/></svg>
        </span>
        <span class="bb-check__label">{{ item.label }}</span>
      </li>
    </ul>
  </div>
</template>

<style scoped>
.bb-check {
  margin: 1rem 0 1.5rem;
  border: 1px solid var(--vp-c-divider);
  border-radius: 8px;
  padding: 0.75rem 1rem;
  background: var(--vp-c-bg-soft);
}
.bb-check__head {
  display: flex;
  justify-content: space-between;
  align-items: baseline;
  margin-bottom: 0.5rem;
  font-family: 'Georgia', 'Times New Roman', serif;
}
.bb-check__title { font-weight: 700; color: var(--vp-c-brand-1); }
.bb-check__count {
  font-size: 0.85rem;
  color: var(--vp-c-text-2);
  font-variant-numeric: tabular-nums;
}
.bb-check__list { list-style: none; padding: 0; margin: 0; }
.bb-check__item {
  display: flex;
  align-items: flex-start;
  gap: 0.65rem;
  padding: 0.5rem 0.25rem;
  cursor: pointer;
  border-radius: 4px;
  user-select: none;
  line-height: 1.45;
}
.bb-check__item:hover { background: var(--vp-c-bg-elv); }
.bb-check__item--done .bb-check__label { color: var(--vp-c-text-3); text-decoration: line-through; }
.bb-check__item--done .bb-check__box {
  background: var(--vp-c-brand-1);
  border-color: var(--vp-c-brand-1);
  color: #0d0f14;
}
.bb-check__box {
  flex: 0 0 auto;
  width: 18px;
  height: 18px;
  border: 2px solid var(--vp-c-border);
  border-radius: 4px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  margin-top: 0.1rem;
  transition: background 0.15s ease, border-color 0.15s ease;
}
.bb-check__box:focus-visible { outline: 2px solid var(--vp-c-brand-1); outline-offset: 2px; }
.bb-check__label { flex: 1 1 auto; }

@media (max-width: 640px) {
  .bb-check { padding: 0.6rem 0.75rem; }
  .bb-check__item { padding: 0.55rem 0.15rem; }
}
</style>
