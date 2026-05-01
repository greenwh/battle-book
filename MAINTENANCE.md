# Battle Book — Maintenance Workflow

How to keep the Battle Book up to date without it becoming a second job.

## The two routine tasks

**Adding a new content page** and **updating an existing page** are the only routine tasks. Both should take under 5 minutes once the workflow is muscle memory.

## Workflow 1 — Adding a new page

### Step 1: Ask Claude (chat) to write it

Examples of what to ask:

> "Write a Bear Trap event guide for the Battle Book. Use the event template."

> "Write a strategy page for Flint covering his rework and current priority. Use the hero template."

> "Write a combat reference page on the garrison swap technique. Use the combat reference template."

Claude produces a single Markdown (`.md`) file with verified content following the appropriate template.

### Step 2: Save the file

Save Claude's Markdown output to the correct path in your local clone of the `battle-book` repo. Path conventions:

| Content type | Folder |
|---|---|
| Event guide | `docs/events/[event-slug].md` (or subfolder for multi-page events like SvS) |
| Hero page | `docs/heroes/[class]/[hero-name].md` |
| Combat reference | `docs/combat/[topic].md` |
| Gear strategy | `docs/gear/[topic].md` |
| Troops topic | `docs/troops/[topic].md` |
| Pet guide | `docs/pets/[pet-name].md` |
| Reference data | `docs/reference/[topic].md` |
| Orientation | `docs/orientation/[topic].md` |

If the folder doesn't exist yet (e.g. you're adding the first hero page and `docs/heroes/` doesn't exist), create the folder first.

### Step 3: Add to the sidebar

Open `docs/.vitepress/config.ts` and find the `sidebar` config. Add one entry under the appropriate section.

For an event guide:
```typescript
'/events/': [
  {
    text: 'Events',
    items: [
      { text: 'Event Hub', link: '/events/' },
      { text: 'SvS', collapsed: false, items: [...] },
      { text: 'Bear Trap', link: '/events/bear-trap' },  // ← new line
    ],
  },
],
```

For a new section entirely (e.g. first hero page), add a new sidebar group:
```typescript
'/heroes/': [
  {
    text: 'Heroes',
    items: [
      { text: 'Hero Hub', link: '/heroes/' },
      { text: 'Flint', link: '/heroes/infantry/flint' },
    ],
  },
],
```

And add a top-nav entry:
```typescript
nav: [
  { text: 'Home', link: '/' },
  { text: 'Events', link: '/events/' },
  { text: 'Heroes', link: '/heroes/' },     // ← new line
  { text: 'Troops', link: '/troops/' },
  { text: 'Reference', link: '/reference/glossary' },
],
```

### Step 4: Commit and push

```bash
git add .
git commit -m "Add Bear Trap event guide"
git push
```

GitHub Actions auto-deploys. Live in 2–3 minutes.

### Step 5: Update the changelog

Add a one-line entry to `docs/reference/changelog.md` under the current month so readers can see what's new.

## Workflow 2 — Updating an existing page

### Step 1: Ask Claude (chat) to update

Examples:

> "The October 22 patch changed the Castle Battle to 5 hours / 2.5 hour win condition. Update the SvS overview accordingly."

> "Mythic Hero Shard scoring changed to 3,500 pts. Update the SvS guide."

> "Add a section on the reforge trick to the SvS overview."

Claude produces the updated `.md` file.

### Step 2: Replace the file

Drop Claude's output into the same path, overwriting the existing file.

### Step 3: Commit and push

```bash
git add .
git commit -m "Update SvS overview — Oct 2025 castle battle patch"
git push
```

### Step 4: Update the `Last verified` date

Every content page ends with a date line:
```markdown
*Last verified: [Date] · Sources: [...]*
```

Update the date when the content changes. This is how readers (and you, six months from now) tell stale pages from fresh ones.

## Workflow 3 — Quarterly verification pass (every 3 months)

This is the discipline that keeps the site from rotting.

Once a quarter, ask Claude:

> "Quarterly verification pass on the Battle Book. Check the SvS overview, prep checklist, and troop ratios pages against current sources. Flag any values that have changed."

Claude does a fresh research pass and surfaces any discrepancies. You decide what to update.

A reasonable rhythm: do this in the same week you do your tax estimates, or pick a recurring date (the 15th of every third month). Set a calendar reminder.

## When to call Claude Code (not just chat Claude)

Most updates don't need Claude Code. Use Claude Code only for:

- Adding new top-level sections (new sidebar group + top-nav entry — minor config work, but clean to have Claude Code do it)
- Building new Vue components (e.g. a new visual style of callout)
- Theme or color token changes
- Bulk content reorganization (renaming many files, restructuring folders)
- Build issues you can't quickly diagnose

For every routine content add or update, chat Claude + your editor + `git push` is faster than spinning up a Claude Code session.

## Troubleshooting

### Build fails after a content update

Check the GitHub Actions tab in the repo. Click the failed run to see the error.

Most common causes:
- **Markdown syntax error** — typo in frontmatter, broken link, mismatched code fence
- **Vue component used incorrectly** — wrong prop name, missing required prop
- **Sidebar config typo** — JSON-style instead of TypeScript-style, missing comma

For frontmatter and Markdown errors, open the failing file and look for the line number in the error message.

### Page not showing up after push

- Did you add it to the sidebar in `config.ts`? VitePress doesn't auto-discover content.
- Is the URL spelled the same in the sidebar config and the file path?
- Is `cleanUrls: true` set in config? (It is in our setup.) Then `docs/events/svs/overview.md` becomes `/events/svs/overview` — note no trailing `.html` and no `index`.

### Search not finding new content

VitePress search rebuilds the index on each build. After a deploy, hard-refresh your browser (Ctrl+Shift+R or Cmd+Shift+R). The search index is part of the deployed site.

### Page looks fine locally but breaks on live site

Most often: `base: '/battle-book/'` in `config.ts` means absolute links need the `/battle-book/` prefix on the live site. If you write `[link](/some/page)`, VitePress correctly prefixes it. But hardcoded absolute URLs (`<a href="/some/page">`) won't get prefixed. Use relative or VitePress-style links.

## Backup

GitHub itself is the backup. Every push is a versioned snapshot. If you ever break the site catastrophically:

```bash
git log              # find a known-good commit hash
git revert HEAD      # undoes the most recent commit
# OR
git reset --hard <commit-hash>     # rolls back to a specific commit
git push --force     # ⚠️ overwrites remote — be sure
```

Force-push is the nuclear option; only use it if you're certain.

## Pacing

You said you don't want this to become a full-time job. The honest pacing target:

- **Routine update** (one page change): 5 minutes
- **New page** (Claude writes it, you save + sidebar + commit): 10 minutes
- **Quarterly verification pass**: 30 minutes once every 3 months
- **New top-level section** (Claude Code involved): one short Claude Code session every few months

If a single update is taking longer than that, something's wrong with the workflow — not your fault. Send the situation back to Claude (chat) and we'll figure out where the friction is.
