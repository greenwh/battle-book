# Ice Kings Battle Book

A reference website for Whiteout Survival players. Live at **https://greenwh.github.io/battle-book/**

Maintained by State 4104. Public access — anyone can read, link, or share.

---

## What's covered

**Events** — SvS (State of Power), Alliance Championship, Bear Trap, Canyon Clash, Crazy Joe, Fishing Tournament, Foundry Battle, Frostfire Mine, Hall of Chiefs, King of Icefield, Mercenary Prestige, Snowbusters, Sunfire Castle Battle

**Strategy** — Furnace 20→30 guide, Daybreak Island, Hero development (Flint, Molly, Bahiti, Alonzo, Mia), Gear strategy (hero gear, reforge, Mythic transfer, Chief Gear), Pet strategy

**Combat** — Rally mechanics, rally joining, garrison swap, troop replenishment, pet buff interactions, pre-battle checklist

**Troops** — Troop ratios by activity and role

**Reference** — Glossary, Changelog

**Orientation** — New member guide

Every page follows the same structure: at-a-glance summary, mechanics, phase-by-phase breakdown, common mistakes, quick reference. Find what you need, do the thing, get back to the game.

---

## Tech

- **VitePress 1.x** — static site generator, Markdown-based authoring
- **Vue 3** — custom components embedded in Markdown pages
- **GitHub Pages** — hosting at `greenwh.github.io/battle-book`
- **GitHub Actions** — auto-deploy on every push to `main`

---

## Local development

```bash
npm install
npm run dev      # opens at localhost:5173
```

```bash
npm run build    # build to docs/.vitepress/dist/
npm run preview  # serve the built output locally
```

---

## Project structure

```
docs/
  .vitepress/
    config.ts              ← nav and sidebar config
    theme/
      index.ts             ← Vue component registration
      custom.css           ← colors and design tokens
      components/          ← 8 custom Vue components
  index.md                 ← home page
  events/                  ← event guides
  strategy/                ← hero, gear, pet, island, furnace guides
  combat/                  ← rally, garrison, replenishment guides
  troops/                  ← troop composition guides
  reference/               ← glossary and changelog
  orientation/             ← new member guide
```

---

## Custom Vue components

Eight components are available in all Markdown files:

| Component | Purpose |
|---|---|
| `<Callout type="info\|tip\|warn\|danger">` | Boxed highlight with icon |
| `<TroopRatio :infantry :lancer :marksman label>` | Stacked-bar troop ratio |
| `<PointsTable :rows sortBy title>` | Event scoring table |
| `<DayChecklist :items title>` | Interactive click-to-check list |
| `<TimelineRow phase day title tone>` | Phase entry for event timelines |
| `<TierBadge tier label>` | S/A/B/C/D/F tier pill |
| `<Frequency cadence>` | Event cadence badge |
| `<HeroCard name troopClass tier role href>` | Hero summary card |

---

## Adding content

**Add a page to an existing section:**
1. Write the `.md` file in the correct `docs/` subfolder
2. Add one sidebar entry in `docs/.vitepress/config.ts`
3. Commit and push — GitHub Actions deploys automatically

**Add a new top-level section:**
1. Create a folder with an `index.md` hub page
2. Add a sidebar group + nav entry in `config.ts`
3. Commit and push

See `MAINTENANCE.md` for full workflow detail, including the quarterly verification process and when to use Claude Code vs. chat Claude.

---

## Contributing

Found an error or want a new guide? [Open an issue](https://github.com/greenwh/battle-book/issues) or send a pull request.

---

## Credits

Content authored by Bill (alliance leader, State 4104) with research and writing assistance from Claude. Sources cross-referenced against community guides at wostools.net, whiteoutsurvival.wiki, allclash.com, OneChilledGamer, and BlueStacks, plus official Helpshift documentation.

The game is owned by Century Games. This is an independent fan reference site — not affiliated with the developers.

---

## License

Content: [Creative Commons Attribution 4.0](https://creativecommons.org/licenses/by/4.0/) (CC-BY-4.0) — feel free to reuse with credit.

Code: MIT.
