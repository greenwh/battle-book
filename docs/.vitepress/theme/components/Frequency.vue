<!--
  Frequency — cadence badge for events (Daily / Weekly / Biweekly / Monthly / etc.).

  Props:
    cadence  string   required — free text. Recognized values get a color;
                      anything else falls back to the neutral "other" tone.
                      Recognized: Daily, Weekly, Biweekly, Monthly, Yearly,
                      One-Time, Seasonal.
-->
<script setup>
import { computed } from 'vue'

const props = defineProps({
  cadence: { type: String, required: true },
})

const known = {
  daily: 'daily',
  weekly: 'weekly',
  biweekly: 'biweekly',
  'bi-weekly': 'biweekly',
  monthly: 'monthly',
  yearly: 'yearly',
  annual: 'yearly',
  'one-time': 'other',
  onetime: 'other',
  seasonal: 'other',
}

const toneKey = computed(() => known[String(props.cadence).trim().toLowerCase()] || 'other')
</script>

<template>
  <span :class="['bb-freq', `bb-freq--${toneKey}`]">{{ cadence }}</span>
</template>

<style scoped>
.bb-freq {
  display: inline-block;
  padding: 0.15rem 0.55rem;
  border-radius: 999px;
  font-size: 0.72rem;
  font-weight: 700;
  letter-spacing: 0.05em;
  text-transform: uppercase;
  background: var(--bb-freq-tone-bg, rgba(168, 179, 199, 0.14));
  color: var(--bb-freq-tone, var(--bb-freq-other));
  border: 1px solid var(--bb-freq-tone, var(--bb-freq-other));
  vertical-align: middle;
}
.bb-freq--daily    { --bb-freq-tone: var(--bb-freq-daily);    --bb-freq-tone-bg: rgba(92, 232, 138, 0.12); }
.bb-freq--weekly   { --bb-freq-tone: var(--bb-freq-weekly);   --bb-freq-tone-bg: rgba(92, 196, 232, 0.12); }
.bb-freq--biweekly { --bb-freq-tone: var(--bb-freq-biweekly); --bb-freq-tone-bg: rgba(245, 179, 66, 0.12); }
.bb-freq--monthly  { --bb-freq-tone: var(--bb-freq-monthly);  --bb-freq-tone-bg: rgba(201, 140, 232, 0.12); }
.bb-freq--yearly   { --bb-freq-tone: var(--bb-freq-yearly);   --bb-freq-tone-bg: rgba(255, 138, 92, 0.12); }
.bb-freq--other    { --bb-freq-tone: var(--bb-freq-other);    --bb-freq-tone-bg: rgba(168, 179, 199, 0.14); }
</style>
