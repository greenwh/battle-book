<!--
  TierBadge — small ranked pill: S / A / B / C / D / F.

  Props:
    tier   'S' | 'A' | 'B' | 'C' | 'D' | 'F'   required, case-insensitive
    label  string                              optional text after the letter
                                               (e.g. <TierBadge tier="S" label="Mythic only" />)
-->
<script setup>
import { computed } from 'vue'

const props = defineProps({
  tier: { type: String, required: true },
  label: { type: String, default: '' },
})

const tierKey = computed(() => {
  const k = String(props.tier).trim().toUpperCase()
  return ['S', 'A', 'B', 'C', 'D', 'F'].includes(k) ? k : 'C'
})
</script>

<template>
  <span :class="['bb-tier', `bb-tier--${tierKey.toLowerCase()}`]">
    <span class="bb-tier__letter">{{ tierKey }}</span>
    <span v-if="label" class="bb-tier__label">{{ label }}</span>
  </span>
</template>

<style scoped>
.bb-tier {
  display: inline-flex;
  align-items: center;
  gap: 0.35rem;
  padding: 0.1rem 0.5rem 0.1rem 0.1rem;
  border-radius: 999px;
  font-size: 0.78rem;
  font-weight: 600;
  background: var(--vp-c-bg-soft);
  border: 1px solid var(--bb-tier-tone, var(--bb-tier-c));
  color: var(--vp-c-text-1);
  vertical-align: middle;
}
.bb-tier__letter {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 22px;
  height: 22px;
  border-radius: 999px;
  background: var(--bb-tier-tone, var(--bb-tier-c));
  color: #0d0f14;
  font-weight: 800;
  font-family: 'Georgia', 'Times New Roman', serif;
  font-size: 0.85rem;
}
.bb-tier__label { padding-right: 0.2rem; color: var(--vp-c-text-2); }

.bb-tier--s { --bb-tier-tone: var(--bb-tier-s); }
.bb-tier--a { --bb-tier-tone: var(--bb-tier-a); }
.bb-tier--b { --bb-tier-tone: var(--bb-tier-b); }
.bb-tier--c { --bb-tier-tone: var(--bb-tier-c); }
.bb-tier--d { --bb-tier-tone: var(--bb-tier-d); }
.bb-tier--f { --bb-tier-tone: var(--bb-tier-f); }
</style>
