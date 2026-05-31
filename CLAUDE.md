# Battle Book — Claude Code Guide

VitePress static site. Whiteout Survival game reference for State 4104. Live at **https://greenwh.github.io/battle-book/**. Content is Markdown; auto-deploys to GitHub Pages via GitHub Actions on every push to `main`.

---

## Commands

```bash
npm run dev      # dev server at localhost:5173 (hot reload)
npm run build    # build to docs/.vitepress/dist/ — run before pushing if in doubt
npm run preview  # serve the built output locally
```

Build must pass cleanly. Fix failures before pushing — never bypass.

---

## Directory structure

```
docs/
  .vitepress/
    config.ts              ← THE config file: nav, sidebar, site metadata
    theme/
      index.ts             ← registers all Vue components globally
      custom.css           ← CSS variables (colors, troop tones, tier colors)
      components/          ← 8 Vue components (see below)
  index.md                 ← home page (layout: home)
  events/                  ← 13 event guides + SvS subfolder (overview + prep checklist)
  strategy/
    index.md               ← strategy hub
    furnace.md             ← Furnace 20→30 guide
    island/                ← Daybreak Island (overview, buildings, decorations, progression)
    heroes/                ← hub, development-roadmap, flint, molly, bahiti, alonzo, mia, greg, logan
    gear/                  ← hub, hero-gear, reforge, mythic-transfer, chief-gear
    pets/                  ← hub, combat-pets
    dawn-academy/          ← hub (index), experts, trek-guide, resources
  combat/                  ← hub, rally-mechanics, rally-joining, garrison-swap,
  │                           troop-replenishment, pet-buffs, pre-battle-checklist,
  │                           scout-reports, battle-reports, reading-reports, garrison-captain
  troops/                  ← hub, ratios
  reference/               ← glossary, changelog
  orientation/             ← new-member
```

---

## config.ts — nav and sidebar

All navigation lives in `docs/.vitepress/config.ts`. It is the only file that needs touching for structural changes.

### Adding a page within an existing section

Add one entry to the correct sidebar key:

```typescript
'/combat/': [
  {
    text: 'Combat',
    items: [
      { text: 'Combat Hub', link: '/combat/' },
      { text: 'Rally Mechanics', link: '/combat/rally-mechanics' },
      // add new entry here
    ],
  },
],
```

### Adding a new top-level section

Two edits:

1. Add a nav entry (between existing entries):
```typescript
nav: [
  { text: 'Home', link: '/' },
  { text: 'Events', link: '/events/' },
  { text: 'Strategy', link: '/strategy/' },
  { text: 'Troops', link: '/troops/' },
  { text: 'Combat', link: '/combat/' },
  { text: 'Reference', link: '/reference/glossary' },
]
```

2. Add a sidebar group:
```typescript
'/new-section/': [
  {
    text: 'Section Name',
    items: [
      { text: 'Hub', link: '/new-section/' },
    ],
  },
],
```

### Collapsed subsections

Use `collapsed: true` for groups that should start folded (Daybreak Island uses this). `collapsed: false` means open by default.

---

## URL and path rules

- `cleanUrls: true` — `docs/combat/garrison-swap.md` becomes `/combat/garrison-swap` (no `.html`)
- `base: '/battle-book/'` — VitePress prefixes links automatically when you use Markdown-style links (`[text](/path/to/page)`). Never hardcode `/battle-book/` in link hrefs.
- `index.md` in a folder becomes the folder URL: `docs/combat/index.md` → `/combat/`
- **cleanUrls strips `.md` from all markdown links** — including links to static files in `docs/public/`. A link like `[text](/MANIFEST.md)` becomes `href="/battle-book/MANIFEST"` (404). To link to a static `.md` file, use its full external URL: `[text](https://greenwh.github.io/battle-book/MANIFEST.md)`.

---

## Content conventions

### Frontmatter (required on every content page)

```yaml
---
title: Page Title
description: One sentence — appears in search results and SEO.
---
```

Use `search: false` on pages that shouldn't be indexed (e.g. changelog).

### Footer line

Every content page ends with:

```markdown
*Last verified: Month YYYY · Sources: [list]*
```

Update this date whenever the content changes. It's how readers tell stale pages from current ones.

### Page structure (standard template)

1. Frontmatter
2. `# Heading` (matches title)
3. At-a-glance / key facts
4. Mechanics
5. Phase-by-phase or section-by-section content
6. Common mistakes
7. Quick reference card / summary table
8. Last verified footer

---

## Vue components

All 8 components are globally registered — use them directly in Markdown like HTML tags. For slots with Markdown content, surround the body with blank lines.

### Callout

Boxed message. Use for warnings, tips, key facts.

```html
<Callout type="warn" title="Optional Title">

Body text. **Markdown works** if surrounded by blank lines.

</Callout>
```

`type`: `info` | `tip` | `warn` | `danger`

---

### TroopRatio

Horizontal stacked bar showing Infantry / Lancer / Marksman split.

```html
<TroopRatio :infantry="50" :lancer="20" :marksman="30" label="Castle Attack Lead" />
```

Numbers should sum to 100. `label` is optional.

---

### PointsTable

Scoring table with automatic number formatting and optional sort.

```html
<PointsTable
  title="Scoring Reference"
  sortBy="points"
  :rows="[
    { item: 'Mythic Hero Shard', day: 'Day 2', points: 90000, note: 'Lucky Wheel only' },
    { item: 'T11 Troops Trained', points: 1000 },
  ]"
/>
```

`sortBy`: `none` | `points` | `item` | `day` — default is `none` (preserves array order)

Row shape: `{ item: string, day?: string, points: number, note?: string }`

---

### DayChecklist

Interactive checklist. Click items to check them off. State resets on page refresh — no persistence.

```html
<DayChecklist
  title="Prep Day 1"
  :items="['Shield up before rally starts', 'Join all alliance rallies', 'Heal wounded after each wave']"
/>
```

---

### TimelineRow

Phase entry for event timelines. Used inside a sequence of rows.

```html
<TimelineRow phase="Prep" day="Day 1" title="Optional Headline" tone="brand">

Body content here. Markdown works with blank lines around it.

</TimelineRow>
```

`tone`: `brand` | `warn` | `danger`

---

### TierBadge

Inline tier pill. Used inline in text or inside HeroCard.

```html
<TierBadge tier="S" label="Mythic only" />
```

`tier`: `S` | `A` | `B` | `C` | `D` | `F` (case-insensitive)

---

### Frequency

Event cadence badge. Used in event guide headers.

```html
<Frequency cadence="Weekly" />
```

Recognized values: `Daily`, `Weekly`, `Biweekly`, `Monthly`, `Yearly`, `One-Time`, `Seasonal`. Anything else renders with a neutral color.

---

### HeroCard

Compact hero summary card. Used on hero hub and comparison pages.

```html
<HeroCard
  name="Flint"
  troopClass="Infantry"
  tier="S"
  role="Rally Leader"
  href="/strategy/heroes/flint"
>
Jan 2026 rework made him the undisputed Infantry rally leader. S-tier for any server with active PvP.
</HeroCard>
```

`troopClass`: `Infantry` | `Lancer` | `Marksman` (controls accent color)
`href` makes the card a clickable link (optional)
`tier` and `role` are optional

---

## Common tasks

### Add a page to an existing section

1. Write the `.md` file in the correct folder
2. Add one sidebar entry in `config.ts`
3. `npm run build` to verify
4. Commit and push

### Add a new top-level section

1. Create the folder with an `index.md` hub page
2. Add a sidebar group to `config.ts`
3. Add a nav entry to `config.ts`
4. `npm run build` to verify
5. Commit and push

### Add a new Vue component

1. Create the `.vue` file in `docs/.vitepress/theme/components/`
2. Import and register it in `docs/.vitepress/theme/index.ts`
3. Use it in Markdown immediately — no build step needed for registration

### Update existing content

Edit the `.md` file directly. Update the `Last verified` date. Build and push.

### Regenerate MANIFEST.md (required on every deployment that adds or removes pages)

```bash
bash scripts/generate-manifest.sh
git add docs/public/MANIFEST.md
```

MANIFEST.md lives at `docs/public/MANIFEST.md` and is served as a static asset at `https://greenwh.github.io/battle-book/MANIFEST.md`. It is the sync mechanism between chat Claude and Claude Code — chat Claude fetches it at the start of any Battle Book session to know what's actually deployed.

GHA auto-regenerates it on every push to `main` that touches `docs/`. Manual regeneration before committing is only needed when you want to verify the output locally. See MAINTENANCE.md for details.

---

## What Claude Code is for

Most content work doesn't need Claude Code — write Markdown in chat Claude, save the file, add the sidebar entry, push.

Use Claude Code for:
- Config changes (new sections, sidebar restructuring, nav changes)
- New Vue components or theme changes
- Bulk file operations or reorganization
- Build failures that need diagnosis
- Any deployment that adds or removes pages (must regenerate MANIFEST.md)

---

## Deployment

GitHub Actions runs on every push to `main`:
1. `npm ci` (or `npm install`)
2. `npm run build`
3. Uploads `docs/.vitepress/dist/` as a Pages artifact
4. Deploys to GitHub Pages

Live in 2–3 minutes after push. Check the Actions tab if deploy seems stuck.
