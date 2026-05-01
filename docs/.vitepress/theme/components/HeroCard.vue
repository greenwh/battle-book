<!--
  HeroCard — compact hero summary. Used on hero index, comparison pages.

  Props:
    name        string                                    required
    troopClass  'Infantry' | 'Lancer' | 'Marksman'        required (named so we don't collide with the `class` attribute)
    tier        'S'|'A'|'B'|'C'|'D'|'F'                   optional
    role        string                                    optional (e.g. "Rally Leader")
    image       string                                    optional URL/path to portrait
    href        string                                    optional — wraps the card in a link

  Slot:
    default — short description / notes
-->
<script setup>
import { computed } from 'vue'

const props = defineProps({
  name: { type: String, required: true },
  troopClass: {
    type: String,
    required: true,
    validator: (v) => ['Infantry', 'Lancer', 'Marksman'].includes(v),
  },
  tier: { type: String, default: '' },
  role: { type: String, default: '' },
  image: { type: String, default: '' },
  href: { type: String, default: '' },
})

const classKey = computed(() => props.troopClass.toLowerCase())
</script>

<template>
  <component :is="href ? 'a' : 'div'" :href="href || undefined" :class="['bb-hero', `bb-hero--${classKey}`, { 'bb-hero--linked': !!href }]">
    <div class="bb-hero__portrait">
      <img v-if="image" :src="image" :alt="name" loading="lazy" />
      <span v-else class="bb-hero__initial">{{ name.charAt(0) }}</span>
    </div>
    <div class="bb-hero__body">
      <div class="bb-hero__head">
        <span class="bb-hero__name">{{ name }}</span>
        <TierBadge v-if="tier" :tier="tier" />
      </div>
      <div class="bb-hero__meta">
        <span class="bb-hero__class">{{ troopClass }}</span>
        <span v-if="role" class="bb-hero__role">· {{ role }}</span>
      </div>
      <div class="bb-hero__notes"><slot /></div>
    </div>
  </component>
</template>

<style scoped>
.bb-hero {
  display: grid;
  grid-template-columns: 64px 1fr;
  gap: 0.875rem;
  padding: 0.875rem 1rem;
  border: 1px solid var(--vp-c-divider);
  border-left: 4px solid var(--bb-hero-tone, var(--vp-c-brand-1));
  border-radius: 8px;
  background: var(--vp-c-bg-soft);
  margin: 0.75rem 0;
  text-decoration: none;
  color: inherit;
  transition: border-color 0.15s ease, transform 0.15s ease;
}
.bb-hero--linked:hover { border-color: var(--bb-hero-tone, var(--vp-c-brand-1)); transform: translateY(-1px); }
.bb-hero--linked:focus-visible {
  outline: 2px solid var(--bb-hero-tone, var(--vp-c-brand-1));
  outline-offset: 3px;
  border-color: var(--bb-hero-tone, var(--vp-c-brand-1));
}

.bb-hero--infantry { --bb-hero-tone: var(--bb-troop-infantry); }
.bb-hero--lancer   { --bb-hero-tone: var(--bb-troop-lancer); }
.bb-hero--marksman { --bb-hero-tone: var(--bb-troop-marksman); }

.bb-hero__portrait {
  width: 64px;
  height: 64px;
  border-radius: 8px;
  background: var(--vp-c-bg-elv);
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
}
.bb-hero__portrait img { width: 100%; height: 100%; object-fit: cover; }
.bb-hero__initial {
  font-family: 'Georgia', 'Times New Roman', serif;
  font-weight: 800;
  font-size: 1.6rem;
  color: var(--bb-hero-tone, var(--vp-c-brand-1));
}

.bb-hero__head {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  flex-wrap: wrap;
}
.bb-hero__name {
  font-family: 'Georgia', 'Times New Roman', serif;
  font-weight: 700;
  font-size: 1.05rem;
  color: var(--vp-c-text-1);
}
.bb-hero__meta {
  font-size: 0.85rem;
  color: var(--vp-c-text-2);
  margin: 0.15rem 0 0.4rem;
}
.bb-hero__class { color: var(--bb-hero-tone, var(--vp-c-brand-1)); font-weight: 600; }
.bb-hero__notes { font-size: 0.92rem; color: var(--vp-c-text-2); line-height: 1.5; }
.bb-hero__notes :deep(p:first-child) { margin-top: 0; }
.bb-hero__notes :deep(p:last-child)  { margin-bottom: 0; }

@media (max-width: 640px) {
  .bb-hero { grid-template-columns: 52px 1fr; padding: 0.75rem; gap: 0.65rem; }
  .bb-hero__portrait { width: 52px; height: 52px; }
}
</style>
