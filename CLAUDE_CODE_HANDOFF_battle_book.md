# Claude Code Handoff — Ice Kings Battle Book (Initial Build)

**Project:** Build a public, mobile-first reference website for Whiteout Survival players, deployed at `https://greenwh.github.io/battle-book`. Owner is Bill (alliance leader, State 4104). Site will grow over time with new event guides, hero pages, and combat references — so the architecture must support adding content as one Markdown file plus one config line, with no other touch points.

**Repo:** `greenwh/battle-book` (already created on GitHub, otherwise empty)

**Stack decision (locked):**
- **VitePress** (Vue-powered static site generator) — chosen for: built-in sidebar/search, Markdown-native authoring, minimal JS shipped to browser, dark mode included, custom Vue components when needed, GitHub Pages friendly.
- **GitHub Pages** hosting via **GitHub Actions** for auto-deploy on push to `main`.
- **No backend, no database, no auth.** Public read-only static site.
- **Branding** carries forward from the existing SvS guide (`svs-guide-state-4104.html` in this project). Dark theme, ice-blue primary, amber accents, Georgia serif headings, system-sans body. Token values listed in §3.

---

## Phase ordering (work in this order)

- **Phase 0** — Orientation pass (read-only). Confirm repo state, verify Node availability, no edits.
- **Phase A** — Scaffold + theme + first 3 starter pages live, locally and on GitHub Pages.
- **Phase B** — Custom Vue components for reusable visual elements (PointsTable, TroopRatio, DayChecklist, Callout, TimelineRow).
- **Phase C** — Polish: search tuning, 404 page, SEO meta, accessibility audit.

---

## Phase 0 — Orientation Pass (DO THIS FIRST)

**Goal:** Confirm the build environment and repo state before any edits. No scaffolding yet.

### 0.1 Environment checks

Run and report results:

```bash
node --version          # need >=18, ideally 20+
npm --version           # need >=9
git --version
git remote -v           # confirm origin = github.com/greenwh/battle-book
```

If Node is below 18, stop and ask Bill how he wants to handle it (nvm install, system upgrade, etc.). Do not silently downgrade VitePress.

### 0.2 Repo state

```bash
ls -la                  # is the repo empty? are there pre-existing files?
cat README.md 2>/dev/null
cat .gitignore 2>/dev/null
```

If the repo has any pre-existing files (even a README), surface them — do not overwrite without confirmation. Empty repo is the expected state.

### 0.3 GitHub Pages settings

Bill needs to enable GitHub Pages with **GitHub Actions** as the source (not branch deploy). The Actions workflow we install in Phase A handles the rest. Note this in the orientation report so Bill can flip the setting in the GitHub web UI before the first push.

### 0.4 Orientation report

Produce a short report covering:
- Node/npm/git versions
- Whether the repo is empty or has unexpected content
- Reminder for Bill to enable Pages → Actions source in GitHub settings
- Any blockers

**Wait for Bill's go-ahead before starting Phase A.**

---

## Phase A — Scaffold + theme + starter content

**Goal:** A working VitePress site, deployed and live, with three real content pages ported from existing SvS guide work.

### A.1 Initialize VitePress

```bash
npm init -y
npm i -D vitepress vue
```

Do **not** use the `npx vitepress init` interactive scaffolder — it asks too many questions and the resulting structure is awkward for our content layout. Manually create the structure below instead.

### A.2 Directory structure (create exactly this)

```
battle-book/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── .gitignore
├── docs/
│   ├── .vitepress/
│   │   ├── config.ts
│   │   └── theme/
│   │       ├── index.ts
│   │       ├── custom.css
│   │       └── components/         # Phase B populates this
│   ├── public/
│   │   └── icons/                  # favicon and OG images go here
│   ├── index.md                    # landing page
│   ├── orientation/
│   │   └── new-member.md           # placeholder for Phase A; real content comes later
│   ├── events/
│   │   ├── index.md                # event hub page
│   │   └── svs/
│   │       ├── overview.md         # ported from svs-guide-state-4104.html
│   │       └── prep-checklist.md   # ported from svs-prep-checklist.md
│   ├── troops/
│   │   ├── index.md                # troops hub
│   │   └── ratios.md               # ported from troop_ratios reference
│   └── reference/
│       ├── glossary.md             # placeholder
│       └── changelog.md            # site update log
├── package.json
├── package-lock.json
└── README.md
```

The empty directories (`heroes/`, `gear/`, `combat/`, `pets/`) are added in subsequent content drops — do **not** create empty stub folders now. VitePress sidebars don't show entries for files that don't exist, so creating empties just adds noise.

### A.3 `package.json` scripts

```json
{
  "name": "battle-book",
  "version": "0.1.0",
  "private": true,
  "type": "module",
  "scripts": {
    "dev": "vitepress dev docs",
    "build": "vitepress build docs",
    "preview": "vitepress preview docs"
  },
  "devDependencies": {
    "vitepress": "^1.5.0",
    "vue": "^3.5.0"
  }
}
```

Pin to specific versions of VitePress that exist as of build time; `^1.5.0` is illustrative — use whatever is current and stable.

### A.4 `.gitignore`

```
node_modules/
docs/.vitepress/dist/
docs/.vitepress/cache/
.DS_Store
*.log
```

### A.5 `docs/.vitepress/config.ts`

```typescript
import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'Ice Kings Battle Book',
  description: 'Whiteout Survival reference for State 4104 and beyond — events, heroes, combat, and strategy.',
  base: '/battle-book/',
  lastUpdated: true,
  cleanUrls: true,

  head: [
    ['link', { rel: 'icon', href: '/battle-book/icons/favicon.ico' }],
    ['meta', { name: 'theme-color', content: '#0d0f14' }],
    ['meta', { property: 'og:type', content: 'website' }],
    ['meta', { property: 'og:title', content: 'Ice Kings Battle Book' }],
    ['meta', { property: 'og:description', content: 'Whiteout Survival reference — events, heroes, combat, and strategy.' }],
  ],

  themeConfig: {
    logo: { src: '/icons/logo.svg', alt: 'Battle Book' },
    siteTitle: 'Battle Book',

    nav: [
      { text: 'Home', link: '/' },
      { text: 'Events', link: '/events/' },
      { text: 'Troops', link: '/troops/' },
      { text: 'Reference', link: '/reference/glossary' },
    ],

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
})
```

### A.6 `docs/.vitepress/theme/index.ts`

```typescript
import DefaultTheme from 'vitepress/theme'
import './custom.css'

export default {
  extends: DefaultTheme,
  // Phase B: register custom components here
  // enhanceApp({ app }) {
  //   app.component('PointsTable', PointsTable)
  //   ...
  // }
}
```

### A.7 `docs/.vitepress/theme/custom.css` — branding tokens

This is the visual continuity with the SvS guide. Override VitePress defaults to match.

```css
/* Ice Kings Battle Book — brand tokens (carry forward from svs-guide-state-4104.html) */

:root {
  /* Color tokens — dark theme is primary */
  --vp-c-bg: #0d0f14;
  --vp-c-bg-alt: #131720;
  --vp-c-bg-soft: #1a1f2b;
  --vp-c-bg-elv: #1f2533;

  --vp-c-text-1: #e8edf5;
  --vp-c-text-2: #a8b3c7;
  --vp-c-text-3: #6b7689;

  --vp-c-divider: #242a38;
  --vp-c-border: #2c3344;

  /* Brand: ice-blue primary, amber accent, red for danger, green for success, purple for ranks */
  --vp-c-brand-1: #5cc4e8;          /* ice blue */
  --vp-c-brand-2: #4eb5d8;
  --vp-c-brand-3: #3da4c5;
  --vp-c-brand-soft: rgba(92, 196, 232, 0.14);

  /* Typography — Georgia serif headings (carry from SvS guide) */
  --vp-font-family-base: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  --vp-font-family-mono: ui-monospace, SFMono-Regular, 'SF Mono', Menlo, Consolas, monospace;
}

/* Force dark mode by default — light mode also available via VitePress toggle */
:root {
  color-scheme: dark;
}

/* Headings use Georgia serif to match SvS guide */
h1, h2, h3, h4, h5, h6,
.VPHero .name,
.VPHero .text {
  font-family: 'Georgia', 'Times New Roman', serif;
  letter-spacing: -0.01em;
}

/* Color for h1/h2 accents */
h1 {
  color: var(--vp-c-brand-1);
}

/* Custom callout colors used throughout content */
.tip-block {
  border-left: 4px solid var(--vp-c-brand-1);
  background: rgba(92, 196, 232, 0.08);
  padding: 1rem 1.25rem;
  border-radius: 6px;
  margin: 1.5rem 0;
}

.warn-block {
  border-left: 4px solid #f5b342;
  background: rgba(245, 179, 66, 0.08);
  padding: 1rem 1.25rem;
  border-radius: 6px;
  margin: 1.5rem 0;
}

.danger-block {
  border-left: 4px solid #ff6b6b;
  background: rgba(255, 107, 107, 0.08);
  padding: 1rem 1.25rem;
  border-radius: 6px;
  margin: 1.5rem 0;
}

/* Tighten table padding for mobile */
@media (max-width: 640px) {
  .vp-doc table {
    font-size: 0.875rem;
  }
  .vp-doc th, .vp-doc td {
    padding: 0.5rem 0.625rem;
  }
}
```

### A.8 GitHub Actions deploy — `.github/workflows/deploy.yml`

```yaml
name: Deploy Battle Book to GitHub Pages

on:
  push:
    branches: [main]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: pages
  cancel-in-progress: false

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - uses: actions/setup-node@v4
        with:
          node-version: 20
      - name: Install dependencies
        run: npm ci || npm install
      - name: Build
        run: npm run build
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: docs/.vitepress/dist

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

### A.9 Starter content — DROP-IN FILES

Bill will provide three Markdown files in this turn (separate attachments):
- `docs/index.md` (landing page)
- `docs/events/svs/overview.md` (ported from `svs-guide-state-4104.html`)
- `docs/events/svs/prep-checklist.md` (ported from `svs-prep-checklist.md`)
- `docs/troops/ratios.md` (new, references `troop_ratios.csv`)

Plus four hub/placeholder pages (also Bill-provided):
- `docs/events/index.md` — event hub overview
- `docs/troops/index.md` — troop hub overview
- `docs/orientation/new-member.md` — orientation entry point
- `docs/reference/glossary.md` — glossary stub
- `docs/reference/changelog.md` — change log

These are dropped in as-is. Do not edit content — only validate that Markdown renders correctly. If a page fails to build, surface the exact error.

### A.10 Local verification

```bash
npm run dev      # opens at localhost:5173 typically
```

Verify on localhost:
- [ ] Landing page renders with hero/grid layout
- [ ] Sidebar shows all sections
- [ ] Search works (type "polar terror" → finds SvS overview)
- [ ] Dark mode is default
- [ ] Light/dark toggle works without breaking layout
- [ ] Mobile view (resize browser <640px) shows hamburger nav
- [ ] No console errors

If any check fails, fix before committing.

### A.11 First commit + push

```bash
git add -A
git commit -m "Initial Battle Book scaffold with SvS guide and troop ratios"
git push origin main
```

Verify the GitHub Action runs successfully and the site is live at `https://greenwh.github.io/battle-book/`. Surface the deploy URL and any Action errors.

### A.12 Acceptance criteria — Phase A

- Site is live at `https://greenwh.github.io/battle-book/`
- All four sidebar sections (Events, Troops, Reference, Orientation) appear in the nav
- SvS overview page renders the full original content with tables, callouts, and color-coded badges
- Search returns hits for: `polar terror`, `mithril`, `troop ratios`, `field triage`
- Mobile rendering verified on phone (Bill confirms)
- Light mode does not break (test once, then leave dark as default)
- Page builds in <30 seconds
- Deploy succeeds via GitHub Actions

---

## Phase B — Custom Vue components

**Goal:** Replace inline HTML in Markdown with reusable Vue components so future content stays consistent.

### B.1 Components to build

Create each in `docs/.vitepress/theme/components/`:

| Component | Purpose | Used in |
|---|---|---|
| `Callout.vue` | Tip/warning/danger boxes with icon | Most pages |
| `PointsTable.vue` | Color-coded scoring table (item / value / day) | Event guides |
| `TroopRatio.vue` | Horizontal bar showing Inf/Lan/Mar split | Combat, troop pages |
| `DayChecklist.vue` | Interactive checkbox list (in-session state only) | Event prep checklists |
| `TimelineRow.vue` | Phase tag + day badge + content row | Event timelines |
| `TierBadge.vue` | S/A/B/C/D rank pill | Hero/pet pages |
| `Frequency.vue` | Daily/Weekly/Biweekly/Monthly badge | Event index |
| `HeroCard.vue` | Compact hero summary card | Hero index, comparison pages |

### B.2 Component contracts

Each component must:
- Accept all data via props (no hardcoded content)
- Have a clear, documented prop list at the top of the file
- Use brand tokens from `custom.css` — no inline color values
- Render correctly in both dark and light VitePress themes
- Be mobile-responsive (test at 375px width)
- Not depend on any external libraries beyond Vue 3

### B.3 Register in theme

Add to `docs/.vitepress/theme/index.ts`:

```typescript
import Callout from './components/Callout.vue'
import PointsTable from './components/PointsTable.vue'
// ... etc

export default {
  extends: DefaultTheme,
  enhanceApp({ app }) {
    app.component('Callout', Callout)
    app.component('PointsTable', PointsTable)
    // ... etc
  }
}
```

### B.4 Usage example in Markdown

```markdown
<Callout type="warn" title="Shield Rule">
If you're not actively fighting, shield up before 10:00 UTC.
</Callout>

<TroopRatio :infantry="50" :lancer="20" :marksman="30" label="Attack Rally" />

<PointsTable :rows="[
  { item: 'Mithril', day: 'Day 4', points: 144000 },
  { item: 'Refined FC', day: 'Day 1 / 5', points: 30000 }
]" />
```

### B.5 Acceptance criteria — Phase B

- All 8 components exist and accept the documented props
- Demo page (`docs/reference/components-demo.md`, hidden from sidebar) shows each component working
- No regressions on Phase A pages (still render correctly)
- Bill approves the visual style on mobile

---

## Phase C — Polish

- Custom 404 page (`docs/404.md`) with a friendly "lost in the tundra" message and links back to main sections
- Open Graph image at `docs/public/og-image.png` (1200x630, branded)
- Accessibility audit: run Lighthouse on the deployed site, fix any contrast or semantic issues flagged
- Add `<meta name="robots" content="index,follow">` (the site is public)
- Verify search index excludes the changelog page (it's noisy and not what searchers want)

---

## Maintenance workflow (post-launch)

This is how Bill and Claude (the chat assistant, not Claude Code) maintain the site going forward. Document this in the README.

### Adding a new content page

1. Bill asks Claude (chat) to write a new guide — e.g. "write a Bear Trap event guide"
2. Claude produces a single `.md` file following the appropriate template (event/hero/combat/etc.)
3. Bill saves it to the right path in his local clone of the repo (e.g. `docs/events/bear-trap.md`)
4. Bill adds one line to `docs/.vitepress/config.ts` sidebar config to surface the page
5. `git add . && git commit -m "Add Bear Trap guide" && git push`
6. GitHub Action auto-deploys

### Updating an existing page

1. Bill asks Claude (chat) to update — e.g. "the Mithril value changed, update SvS overview"
2. Claude produces the edited `.md` file
3. Bill replaces the file in his repo, commits, pushes
4. GitHub Action auto-deploys

### When Claude Code is needed

Only for structural changes:
- New top-level sections (sidebar groups)
- New Vue components
- Theme/config changes
- Build issues
- Bulk content reorganization

For routine content updates, no Claude Code session is needed — just file replacements and a push.

---

## Appendix — Why VitePress over alternatives

For Bill's reference. Don't include this in the README.

| Option | Why not chosen |
|---|---|
| Pure HTML (multiple files) | Maintenance nightmare at 30+ pages — every nav change touches every file |
| Astro | More flexible than needed; longer setup; Vue components require an integration |
| Eleventy | Excellent but more boilerplate, no built-in search |
| Docusaurus | Heavier, React-based, designed for software docs not content sites |
| MkDocs Material | Python toolchain adds friction for Claude Code workflows |
| SPA (React/Vue/Svelte) | Heavier on slow connections, harder to deploy, no benefit for static content |

VitePress wins on: built-in search, built-in dark mode, near-zero JS shipped to browser, Markdown-native, Vue components when needed, fast builds, minimal config.

---

## Questions to surface to Bill if encountered

- Custom domain? (Default: `greenwh.github.io/battle-book` is fine per Bill's confirmation)
- Analytics? (Default: skip — privacy-respecting, and GitHub Pages traffic stats are insufficient. If desired, GoatCounter is the lightest option to add later.)
- Multilingual? (Default: skip for launch; add `i18n` config when translators emerge)
- Comments / discussion? (Default: skip — no value, lots of moderation cost)

End of spec.
