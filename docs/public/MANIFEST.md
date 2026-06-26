# Battle Book — Site Manifest

This file is the **single source of truth** for what's deployed on the Battle Book.
It is regenerated automatically by GitHub Actions on every push to main that touches `docs/`.

Published at: `https://greenwh.github.io/battle-book/MANIFEST.md`
Source at: `https://raw.githubusercontent.com/greenwh/battle-book/main/docs/public/MANIFEST.md`

**Last updated:** 2026-06-26 20:44:18 UTC
**Last commit:** `bc1a213`

## Deployed Pages

### `/combat/`

- `/combat/battle-reports` — battle-reports.md
- `/combat/garrison-captain` — garrison-captain.md
- `/combat/garrison-swap` — garrison-swap.md
- `/combat/` — index.md
- `/combat/pet-buffs` — pet-buffs.md
- `/combat/pre-battle-checklist` — pre-battle-checklist.md
- `/combat/rally-joining` — rally-joining.md
- `/combat/rally-mechanics` — rally-mechanics.md
- `/combat/reading-reports` — reading-reports.md
- `/combat/scout-reports` — scout-reports.md
- `/combat/troop-replenishment` — troop-replenishment.md

### `/events/`

- `/events/alliance-championship` — alliance-championship.md
- `/events/bear-trap` — bear-trap.md
- `/events/canyon-clash` — canyon-clash.md
- `/events/crazy-joe` — crazy-joe.md
- `/events/fishing-tournament` — fishing-tournament.md
- `/events/foundry-battle` — foundry-battle.md
- `/events/frostfire-mine` — frostfire-mine.md
- `/events/hall-of-chiefs` — hall-of-chiefs.md
- `/events/` — index.md
- `/events/king-of-icefield` — king-of-icefield.md
- `/events/mercenary-prestige` — mercenary-prestige.md
- `/events/snowbusters` — snowbusters.md
- `/events/sunfire-castle` — sunfire-castle.md
- `/events/svs/overview` — overview.md
- `/events/svs/prep-checklist` — prep-checklist.md

### `/orientation/`

- `/orientation/new-member` — new-member.md

### `/reference/`

- `/reference/changelog` — changelog.md
- `/reference/components-demo` — components-demo.md
- `/reference/glossary` — glossary.md

### `/strategy/`

- `/strategy/dawn-academy/experts` — experts.md
- `/strategy/dawn-academy/` — index.md
- `/strategy/dawn-academy/resources` — resources.md
- `/strategy/dawn-academy/trek-guide` — trek-guide.md
- `/strategy/fire-crystal` — fire-crystal.md
- `/strategy/furnace` — furnace.md
- `/strategy/gear/chief-gear-costs` — chief-gear-costs.md
- `/strategy/gear/chief-gear` — chief-gear.md
- `/strategy/gear/hero-gear` — hero-gear.md
- `/strategy/gear/` — index.md
- `/strategy/gear/mythic-transfer` — mythic-transfer.md
- `/strategy/gear/reforge` — reforge.md
- `/strategy/heroes/alonzo` — alonzo.md
- `/strategy/heroes/bahiti` — bahiti.md
- `/strategy/heroes/development-roadmap` — development-roadmap.md
- `/strategy/heroes/flint` — flint.md
- `/strategy/heroes/greg` — greg.md
- `/strategy/heroes/` — index.md
- `/strategy/heroes/logan` — logan.md
- `/strategy/heroes/mia` — mia.md
- `/strategy/heroes/molly` — molly.md
- `/strategy/` — index.md
- `/strategy/island/buildings` — buildings.md
- `/strategy/island/decorations` — decorations.md
- `/strategy/island/` — index.md
- `/strategy/island/progression` — progression.md
- `/strategy/pets/combat-pets` — combat-pets.md
- `/strategy/pets/` — index.md
- `/strategy/pets/upgrade-costs` — upgrade-costs.md

### `/troops/`

- `/troops/` — index.md
- `/troops/ratios` — ratios.md

## Top-Level Files

- `/404` — 404.md
- `/` — index.md

## Sidebar Configuration (config.ts excerpt)

```typescript
    sidebar: {
      '/events/': [
        {
          text: 'Events',
          items: [
            { text: 'Event Hub', link: '/events/' },
            {
              text: 'SvS (State of Power)',
              collapsed: false,
              items: [
                { text: 'Overview & Strategy', link: '/events/svs/overview' },
                { text: 'Prep Checklist', link: '/events/svs/prep-checklist' },
              ],
            },
            { text: 'Alliance Championship', link: '/events/alliance-championship' },
            { text: 'Bear Trap', link: '/events/bear-trap' },
            { text: 'Canyon Clash', link: '/events/canyon-clash' },
            { text: 'Crazy Joe', link: '/events/crazy-joe' },
            { text: 'Fishing Tournament', link: '/events/fishing-tournament' },
            { text: 'Foundry Battle', link: '/events/foundry-battle' },
            { text: 'Frostfire Mine', link: '/events/frostfire-mine' },
            { text: 'Hall of Chiefs', link: '/events/hall-of-chiefs' },
            { text: 'King of Icefield', link: '/events/king-of-icefield' },
            { text: 'Mercenary Prestige', link: '/events/mercenary-prestige' },
            { text: 'Snowbusters', link: '/events/snowbusters' },
            { text: 'Sunfire Castle Battle', link: '/events/sunfire-castle' },
          ],
        },
      ],
      '/strategy/': [
        {
          text: 'Strategy',
          items: [
            { text: 'Strategy Hub', link: '/strategy/' },
            { text: 'Furnace 20→30', link: '/strategy/furnace' },
            { text: 'Fire Crystal (FC1→FC10)', link: '/strategy/fire-crystal' },
            {
              text: 'Daybreak Island',
              collapsed: true,
              items: [
                { text: 'Overview', link: '/strategy/island/' },
                { text: 'Building Priorities', link: '/strategy/island/buildings' },
                { text: 'Decoration Strategy', link: '/strategy/island/decorations' },
                { text: 'Progression Guide', link: '/strategy/island/progression' },
              ],
            },
            {
              text: 'Heroes',
              collapsed: false,
              items: [
                { text: 'Hero Hub', link: '/strategy/heroes/' },
                { text: 'Development Roadmap', link: '/strategy/heroes/development-roadmap' },
                { text: 'Flint', link: '/strategy/heroes/flint' },
                { text: 'Logan', link: '/strategy/heroes/logan' },
                { text: 'Molly', link: '/strategy/heroes/molly' },
                { text: 'Mia', link: '/strategy/heroes/mia' },
                { text: 'Bahiti', link: '/strategy/heroes/bahiti' },
                { text: 'Alonzo', link: '/strategy/heroes/alonzo' },
                { text: 'Greg', link: '/strategy/heroes/greg' },
              ],
            },
            {
              text: 'Gear',
              collapsed: false,
              items: [
                { text: 'Gear Hub', link: '/strategy/gear/' },
                { text: 'Hero Gear', link: '/strategy/gear/hero-gear' },
                { text: 'Reforge Strategy', link: '/strategy/gear/reforge' },
                { text: 'Mythic Transfer', link: '/strategy/gear/mythic-transfer' },
                { text: 'Chief Gear', link: '/strategy/gear/chief-gear' },
                { text: 'Chief Gear Costs', link: '/strategy/gear/chief-gear-costs' },
              ],
            },
            {
              text: 'Pets',
              collapsed: false,
              items: [
                { text: 'Pet Hub', link: '/strategy/pets/' },
                { text: 'Combat Pets', link: '/strategy/pets/combat-pets' },
                { text: 'Pet Upgrade Costs', link: '/strategy/pets/upgrade-costs' },
              ],
            },
            {
              text: 'Dawn Academy',
              collapsed: false,
              items: [
                { text: 'Overview', link: '/strategy/dawn-academy/' },
                { text: 'The Experts', link: '/strategy/dawn-academy/experts' },
                { text: 'Trek Guide', link: '/strategy/dawn-academy/trek-guide' },
                { text: 'Resources', link: '/strategy/dawn-academy/resources' },
              ],
            },
          ],
        },
      ],
      '/combat/': [
        {
          text: 'Combat',
          items: [
            { text: 'Combat Hub', link: '/combat/' },
            { text: 'Rally Mechanics', link: '/combat/rally-mechanics' },
            { text: 'Rally Joining', link: '/combat/rally-joining' },
            { text: 'Scout Reports', link: '/combat/scout-reports' },
            { text: 'Battle Reports', link: '/combat/battle-reports' },
            { text: 'Reading Battle Reports', link: '/combat/reading-reports' },
            { text: 'Garrison Captain', link: '/combat/garrison-captain' },
            { text: 'Garrison Swap', link: '/combat/garrison-swap' },
            { text: 'Troop Replenishment', link: '/combat/troop-replenishment' },
            { text: 'Pet Buffs', link: '/combat/pet-buffs' },
            { text: 'Pre-Battle Checklist', link: '/combat/pre-battle-checklist' },
          ],
        },
      ],
      '/troops/': [
        {
          text: 'Troops',
          items: [
            { text: 'Troops Hub', link: '/troops/' },
            { text: 'Troop Ratios', link: '/troops/ratios' },
          ],
        },
      ],
      '/reference/': [
        {
          text: 'Reference',
          items: [
            { text: 'Glossary', link: '/reference/glossary' },
            { text: 'Changelog', link: '/reference/changelog' },
          ],
        },
      ],
      '/orientation/': [
        {
          text: 'Orientation',
          items: [
            { text: 'New Member', link: '/orientation/new-member' },
          ],
        },
      ],
    },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/greenwh/battle-book' },
    ],

    search: {
      provider: 'local',
      options: {
        detailedView: true,
      },
    },

    editLink: {
      pattern: 'https://github.com/greenwh/battle-book/edit/main/docs/:path',
      text: 'Suggest an edit on GitHub',
    },

    footer: {
      message: 'Ice Kings Battle Book · Whiteout Survival reference · Best information available — verify against in-game changes.',
      copyright: 'Built with VitePress · Hosted on GitHub Pages',
    },

    outline: {
      level: [2, 3],
      label: 'On this page',
    },

    lastUpdatedText: 'Last updated',
  },
```

## Recent Deployment History

```
bc1a213 cleanup
ec0761f chore: regenerate MANIFEST.md [skip manifest]
46900f1 Add Fire Crystal, Pet Costs, Chief Gear Costs pages; Merc Prestige wave-count note
f236512 Update CLAUDE.md: combat dir structure, MANIFEST path, cleanUrls gotcha
1405dda chore: regenerate MANIFEST.md [skip manifest]
8b7b1e4 Fix manifest link: use full URL to avoid VitePress cleanUrls stripping .md extension
dde8850 chore: regenerate MANIFEST.md [skip manifest]
a6c963b Fix homepage Recently Updated section: add Combat Reports bullet, move Site Manifest before changelog line
06477d2 chore: regenerate MANIFEST.md [skip manifest]
a3b4b34 Add Combat reports section + sync infrastructure (MANIFEST auto-regen)
```
