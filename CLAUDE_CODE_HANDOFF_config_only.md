# Battle Book — Claude Code Instructions

**What happened:** 21 new content files were created by running 3 shell scripts in the repo root. All content is written and in place. Your job is config changes and updates to existing files only.

**Run these first (if not already done):**
```bash
bash create_combat_section.sh
bash create_heroes_section.sh
bash create_gear_pets_section.sh
```

---

## 1. Update `docs/.vitepress/config.ts`

### Add "Combat" to nav

Insert between Troops and Reference:

```typescript
{ text: 'Combat', link: '/combat/' },
```

Full nav should be:
```typescript
nav: [
  { text: 'Home', link: '/' },
  { text: 'Events', link: '/events/' },
  { text: 'Strategy', link: '/strategy/' },
  { text: 'Troops', link: '/troops/' },
  { text: 'Combat', link: '/combat/' },
  { text: 'Reference', link: '/reference/glossary' },
],
```

### Add Combat sidebar

Add this new sidebar group:

```typescript
'/combat/': [
  {
    text: 'Combat',
    items: [
      { text: 'Combat Hub', link: '/combat/' },
      { text: 'Rally Mechanics', link: '/combat/rally-mechanics' },
      { text: 'Rally Joining', link: '/combat/rally-joining' },
      { text: 'Garrison Swap', link: '/combat/garrison-swap' },
      { text: 'Troop Replenishment', link: '/combat/troop-replenishment' },
      { text: 'Pet Buffs', link: '/combat/pet-buffs' },
      { text: 'Pre-Battle Checklist', link: '/combat/pre-battle-checklist' },
    ],
  },
],
```

### Expand Strategy sidebar

Replace the existing `/strategy/` sidebar with this expanded version. Keep existing Island items exactly as they are — just add the new groups:

```typescript
'/strategy/': [
  {
    text: 'Strategy',
    items: [
      { text: 'Strategy Hub', link: '/strategy/' },
      { text: 'Furnace 20→30', link: '/strategy/furnace' },
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
          { text: 'Molly', link: '/strategy/heroes/molly' },
          { text: 'Bahiti', link: '/strategy/heroes/bahiti' },
          { text: 'Alonzo', link: '/strategy/heroes/alonzo' },
          { text: 'Mia (Pipeline)', link: '/strategy/heroes/mia' },
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
        ],
      },
      {
        text: 'Pets',
        collapsed: false,
        items: [
          { text: 'Pet Hub', link: '/strategy/pets/' },
          { text: 'Combat Pets', link: '/strategy/pets/combat-pets' },
        ],
      },
    ],
  },
],
```

---

## 2. Update `docs/index.md` (Home page)

Change the "Combat Basics" feature card link from `/troops/ratios` to `/combat/`:

```yaml
- title: Combat Basics
  details: Rally mechanics, troop replenishment, shielding, garrison swaps, and the timing tricks that win battles.
  link: /combat/
  linkText: Combat hub
  icon: ⚔️
```

Update the "Recently updated" section to include:

```markdown
- **Combat Section** — new section covering rally mechanics, rally joining, garrison swaps, troop replenishment, pet buff interactions, and pre-battle checklist
- **Strategy Expansion** — hero development roadmap, individual hero pages (Flint, Molly, Bahiti, Alonzo, Mia), gear strategy, pet strategy
```

---

## 3. Update `docs/strategy/index.md` (Strategy hub)

**Remove** the "Combat References" section entirely (it was a placeholder — Combat is now its own top-level section).

**Replace** the Heroes, Gear, and Pets sections with links to the new pages. Change from:

```markdown
## Heroes
Hero priorities, skill leveling order, Lucky Wheel planning, and when to bench a hero. *(Coming soon)*

## Gear
Enhancement priority slots by troop type, reforge strategy, Mythic transfer rules, and F2P stopping points. *(Coming soon)*

## Pets
Combat pet leveling, refinement priorities, pre-event activation routines. *(Coming soon — deferred until server unlock)*
```

To:

```markdown
## Heroes

Hero priorities, development roadmap, skill leveling, Lucky Wheel planning, and roster transitions across generations.

- [Hero Strategy Hub](/strategy/heroes/) — roster planning philosophy and hero index
- [Development Roadmap](/strategy/heroes/development-roadmap) — Gen 1 F20 through Gen 3 progression
- [Flint](/strategy/heroes/flint) — S-tier Infantry, Jan 2026 rework, rally leader king
- [Molly](/strategy/heroes/molly) — Gen 1 Lancer, transitional until Mia
- [Bahiti](/strategy/heroes/bahiti) — best Epic Marksman, placeholder until Alonzo
- [Alonzo](/strategy/heroes/alonzo) — long-term Mythic Marksman
- [Mia](/strategy/heroes/mia) — Gen 3 pipeline Lancer, future Molly replacement

## Gear

Enhancement priority slots by troop type, reforge strategy, Mythic transfer rules, Chief Gear, and F2P stopping points.

- [Gear Strategy Hub](/strategy/gear/) — gear system overview and key principles
- [Hero Gear](/strategy/gear/hero-gear) — enhancement priority, Master Forgery, widget scaling
- [Reforge Strategy](/strategy/gear/reforge) — when and what to reforge
- [Mythic Transfer](/strategy/gear/mythic-transfer) — free same-type transfers
- [Chief Gear](/strategy/gear/chief-gear) — F22 unlock, set bonuses, upgrade order

## Pets

Combat pet leveling, refinement priorities, utility pets, and pre-event activation routines.

- [Pet Strategy Hub](/strategy/pets/) — how pets work, utility pets quick reference
- [Combat Pets](/strategy/pets/combat-pets) — all 8 combat pets, tier list, refinement rules
```

**Update** the "Where To Start" section to reference the new pages.

---

## 4. Update `docs/troops/index.md` (Troops hub)

Add a new section after "Available Now":

```markdown
## Combat Mechanics

Looking for how to fight, not what to bring? The [Combat](/combat/) section covers rally mechanics, garrison swaps, troop replenishment, and pet buff interactions.
```

In "Coming Soon", remove "Deployment Strategy" (now covered by Combat) but keep "Promotion vs. Training" and "Tier Progression".

---

## 5. Update `docs/reference/glossary.md`

Add these terms in alphabetical order within their sections:

**Under Game Terms:**
- **Armor Rift** — Titan Roc's pet skill (-5% enemy HP). Useful in most PvP but counterproductive in Bear Trap when the alliance kills the bear easily.
- **Buff Snapshot** — Some events (notably Alliance Championship) lock in buffs at registration. Buffs activated after registration don't apply.
- **Expedition Skills** — Hero skills on the right side. Used on the world map — rallies, marches, Bear Trap, beasts, gathering, Castle/Fortress battles, and State of Power.
- **Exploration Skills** — Hero skills on the left side. Used in Arena, Lighthouse, and story chapters.
- **Life Essence** — Primary resource on Daybreak Island. Used to purchase and upgrade decorations.
- **Lucky Wheel** — Periodic event for acquiring Mythic hero shards. 120 spins per event is the F2P value ceiling.
- **MF / Master Forgery** — Additional enhancement tier on Mythic gear. Levels 1–5, each providing significant stat boosts.
- **Prosperity** — Island stat that determines Tree of Life level. Earned by placing and upgrading decorations.
- **Widget** — A hero's exclusive gear piece (5th slot), unlocked at 1★ Ascension. Provides multiplicative Special Bonus stats.

**Under Combat Terms:**
- **Garrison Swap** — Technique for replacing an attack march with a garrison march by timing a recall during the last seconds of a garrison march arrival.
- **Troop Replenishment** — Sending additional troops without a hero to reinforce an existing garrison mid-battle.

---

## 6. Update `docs/reference/changelog.md`

Add at the top (before existing entries):

```markdown
## May 2026

### Combat Section Launch

- New top-level **Combat** section with 6 guides: Rally Mechanics, Rally Joining, Garrison Swap, Troop Replenishment, Pet Buffs, Pre-Battle Checklist
- "Combat Basics" home card now links to /combat/

### Strategy Section Expansion

- **Hero Strategy** — hub, development roadmap (Gen 1 F20 → Gen 3), plus individual pages for Flint, Molly, Bahiti, Alonzo, Mia
- **Gear Strategy** — hub, hero gear enhancement guide, reforge strategy, Mythic transfer rules, Chief Gear
- **Pet Strategy** — hub, combat pets tier list with leveling priority and refinement
- Strategy hub updated: Combat References removed, all placeholders replaced with live content
- Pets section updated: no longer says "deferred until server unlock"

### Site Structure

- "Combat" added to top navigation
- Strategy sidebar expanded with Heroes, Gear, Pets subsections
- Troops hub updated with combat cross-link
- Glossary expanded with 11 new terms
```

---

## 7. Verification

After all changes, run `npm run build` and check:

- [ ] Build succeeds with no errors
- [ ] All 21 new pages render
- [ ] "Combat" appears in top nav
- [ ] Combat sidebar shows all 6 pages
- [ ] Strategy sidebar shows Heroes, Gear, Pets groups
- [ ] Home page Combat card links to /combat/
- [ ] Strategy hub no longer shows "Combat References" or "Coming soon" for Heroes/Gear/Pets
- [ ] All cross-links work (spot-check 5-6 from different sections)
- [ ] Search finds: "rally joiner", "garrison swap", "Flint rework", "Master Forgery"
- [ ] Dark theme renders correctly
- [ ] Mobile layout works (tables don't break)

Then `git add . && git commit -m "Add Combat section + expand Strategy with Heroes, Gear, Pets" && git push`
