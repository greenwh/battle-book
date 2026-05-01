<!--
  PointsTable — scoring table for event guides.

  Props:
    rows     Array<{ item: string, day?: string, points: number, note?: string }>
    title    string  (optional table caption)
    sortBy   'points' | 'item' | 'day' | 'none'   default: 'none' — preserve given order

  Number formatting uses Intl.NumberFormat for thousand separators.
-->
<script setup>
import { computed } from 'vue'

const props = defineProps({
  rows: { type: Array, required: true },
  title: { type: String, default: '' },
  sortBy: {
    type: String,
    default: 'none',
    validator: (v) => ['none', 'points', 'item', 'day'].includes(v),
  },
})

const fmt = new Intl.NumberFormat('en-US')

const sorted = computed(() => {
  const arr = [...props.rows]
  if (props.sortBy === 'points') arr.sort((a, b) => (b.points || 0) - (a.points || 0))
  else if (props.sortBy === 'item') arr.sort((a, b) => String(a.item).localeCompare(String(b.item)))
  else if (props.sortBy === 'day') arr.sort((a, b) => String(a.day || '').localeCompare(String(b.day || '')))
  return arr
})

function magnitudeClass(points) {
  if (points >= 100000) return 'bb-pt--xl'
  if (points >= 10000)  return 'bb-pt--lg'
  if (points >= 1000)   return 'bb-pt--md'
  return 'bb-pt--sm'
}
</script>

<template>
  <figure class="bb-points">
    <figcaption v-if="title" class="bb-points__caption">{{ title }}</figcaption>
    <table class="bb-points__table">
      <thead>
        <tr><th>Item</th><th class="bb-points__day-col">Day</th><th class="bb-points__pts-col">Points</th></tr>
      </thead>
      <tbody>
        <tr v-for="(row, i) in sorted" :key="i">
          <td>
            <span class="bb-points__item">{{ row.item }}</span>
            <span v-if="row.note" class="bb-points__note">{{ row.note }}</span>
          </td>
          <td class="bb-points__day"><span v-if="row.day" class="bb-points__day-pill">{{ row.day }}</span></td>
          <td class="bb-points__pts">
            <span :class="['bb-points__value', magnitudeClass(row.points)]">{{ fmt.format(row.points) }}</span>
          </td>
        </tr>
      </tbody>
    </table>
  </figure>
</template>

<style scoped>
.bb-points { margin: 1.25rem 0; }
.bb-points__caption {
  font-family: 'Georgia', 'Times New Roman', serif;
  font-weight: 700;
  color: var(--vp-c-brand-1);
  margin-bottom: 0.5rem;
}
.bb-points__table {
  width: 100%;
  border-collapse: collapse;
  font-size: 0.95rem;
}
.bb-points__table th, .bb-points__table td {
  padding: 0.6rem 0.75rem;
  border-bottom: 1px solid var(--vp-c-divider);
  text-align: left;
}
.bb-points__table th {
  font-weight: 600;
  color: var(--vp-c-text-2);
  font-size: 0.85rem;
  text-transform: uppercase;
  letter-spacing: 0.04em;
}
.bb-points__pts-col, .bb-points__pts { text-align: right; font-variant-numeric: tabular-nums; }
.bb-points__day-col, .bb-points__day { text-align: center; }
.bb-points__item { font-weight: 600; }
.bb-points__note { display: block; font-size: 0.8rem; color: var(--vp-c-text-3); margin-top: 0.15rem; }

.bb-points__day-pill {
  display: inline-block;
  padding: 0.15rem 0.5rem;
  background: var(--vp-c-brand-soft);
  color: var(--vp-c-brand-1);
  border-radius: 999px;
  font-size: 0.78rem;
  font-weight: 600;
}

.bb-points__value { font-weight: 600; }
.bb-points__value.bb-pt--xl { color: var(--bb-callout-warn); font-weight: 800; }
.bb-points__value.bb-pt--lg { color: var(--vp-c-brand-1); }
.bb-points__value.bb-pt--md { color: var(--vp-c-text-1); }
.bb-points__value.bb-pt--sm { color: var(--vp-c-text-2); }

@media (max-width: 640px) {
  .bb-points__table { font-size: 0.875rem; }
  .bb-points__table th, .bb-points__table td { padding: 0.45rem 0.5rem; }
  .bb-points__day-pill { font-size: 0.7rem; padding: 0.1rem 0.4rem; }
}
</style>
