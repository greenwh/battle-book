# Claude Code Handoff — Sync Infrastructure Recovery

**Date:** May 30, 2026
**Author:** Claude (chat)
**Status:** Recovery handoff. Previous combined deploy completed the Battle Reports content but skipped the sync infrastructure changes. This finishes that work and only that work.

## What Already Got Done (Verified Live)

- 4 new Combat pages deployed: scout-reports, battle-reports, reading-reports, garrison-captain
- Combat hub page updated with new sections
- Combat sidebar shows all 11 entries

## What's Still Pending

- `scripts/generate-manifest.sh` still writes to repo root, not `docs/public/`
- `docs/public/MANIFEST.md` doesn't exist
- `.github/workflows/update-manifest.yml` doesn't exist
- `MANIFEST.md` at repo root is stale (still shows `Last updated: 2026-05-26`)
- `docs/index.md` doesn't have the manifest discovery link
- `docs/reference/changelog.md` and `docs/reference/glossary.md` weren't updated for the Combat reports either — flag separately at the end

This handoff fixes the sync infrastructure. The two missed content updates (changelog + glossary entries from the previous handoff) are noted at the end but not required for sync to work.

---

## Phase 0 — Verify State

```bash
pwd                                          # battle-book repo root
git status                                   # clean tree
git pull                                     # latest from main

# Confirm starting state matches what chat Claude described
ls -la MANIFEST.md                           # should exist (stale)
ls -la docs/public/MANIFEST.md 2>&1          # should NOT exist
ls -la .github/workflows/update-manifest.yml 2>&1   # should NOT exist
cat scripts/generate-manifest.sh | head -10  # confirm it currently writes to repo root
```

Report results. If state differs from above, stop and tell Bill.

---

## Phase 1 — Replace `scripts/generate-manifest.sh`

Overwrite the file with this version. It writes to `docs/public/MANIFEST.md` (served by VitePress as a static asset).

```bash
cat > scripts/generate-manifest.sh << 'EOF_SCRIPT'
#!/bin/bash
# scripts/generate-manifest.sh
# Regenerates docs/public/MANIFEST.md from current repo state.
# Run from repo root.
#
# Output served at: https://greenwh.github.io/battle-book/MANIFEST.md
# Regenerated automatically by .github/workflows/update-manifest.yml on every push to main.

set -e

MANIFEST_PATH="docs/public/MANIFEST.md"
mkdir -p docs/public

cat > "$MANIFEST_PATH" << 'EOF_TOP'
# Battle Book — Site Manifest

This file is the **single source of truth** for what's deployed on the Battle Book.
Regenerated automatically by GitHub Actions on every push to main that touches `docs/`.

Published at: `https://greenwh.github.io/battle-book/MANIFEST.md`
Source at: `https://raw.githubusercontent.com/greenwh/battle-book/main/docs/public/MANIFEST.md`

EOF_TOP

echo "**Last updated:** $(date -u +"%Y-%m-%d %H:%M:%S") UTC" >> "$MANIFEST_PATH"
echo "**Last commit:** \`$(git rev-parse --short HEAD)\`" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"
echo "## Deployed Pages" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"

for dir in $(find docs -mindepth 1 -maxdepth 1 -type d ! -name '.vitepress' ! -name 'public' | sort); do
  section=$(basename "$dir")
  echo "### \`/${section}/\`" >> "$MANIFEST_PATH"
  echo "" >> "$MANIFEST_PATH"
  find "$dir" -name "*.md" | sort | while read -r f; do
    url=$(echo "$f" | sed 's|^docs||; s|\.md$||; s|/index$|/|')
    echo "- \`${url}\` — $(basename "$f")" >> "$MANIFEST_PATH"
  done
  echo "" >> "$MANIFEST_PATH"
done

echo "## Top-Level Files" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"
for f in docs/*.md; do
  if [ -f "$f" ]; then
    url=$(echo "$f" | sed 's|^docs||; s|\.md$||; s|/index$|/|')
    [ -z "$url" ] && url="/"
    echo "- \`${url}\` — $(basename "$f")" >> "$MANIFEST_PATH"
  fi
done
echo "" >> "$MANIFEST_PATH"

echo "## Sidebar Configuration (config.ts excerpt)" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"
echo '```typescript' >> "$MANIFEST_PATH"
sed -n '/sidebar:/,/^  },$/p' docs/.vitepress/config.ts >> "$MANIFEST_PATH"
echo '```' >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"

echo "## Recent Deployment History" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"
echo '```' >> "$MANIFEST_PATH"
git log --oneline -10 2>/dev/null >> "$MANIFEST_PATH" || echo "(git log unavailable)" >> "$MANIFEST_PATH"
echo '```' >> "$MANIFEST_PATH"

echo "Generated $MANIFEST_PATH"
EOF_SCRIPT

chmod +x scripts/generate-manifest.sh
```

---

## Phase 2 — Create the GitHub Actions Workflow

```bash
mkdir -p .github/workflows

cat > .github/workflows/update-manifest.yml << 'EOF_WORKFLOW'
name: Update Manifest

on:
  push:
    branches: [main]
    paths:
      - 'docs/**'
      - 'scripts/generate-manifest.sh'
      - '!docs/public/MANIFEST.md'

permissions:
  contents: write

jobs:
  update-manifest:
    runs-on: ubuntu-latest
    if: "!contains(github.event.head_commit.message, '[skip manifest]')"
    steps:
      - name: Checkout
        uses: actions/checkout@v4
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          fetch-depth: 0

      - name: Generate manifest
        run: bash scripts/generate-manifest.sh

      - name: Commit if changed
        run: |
          git config user.name "github-actions[bot]"
          git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
          if [[ -n "$(git status --porcelain)" ]]; then
            git add docs/public/MANIFEST.md
            git commit -m "chore: regenerate MANIFEST.md [skip manifest]"
            git push
          else
            echo "No manifest changes needed."
          fi
EOF_WORKFLOW
```

---

## Phase 3 — Remove the Stale Repo-Root MANIFEST.md

```bash
git rm MANIFEST.md
```

(The new manifest lives at `docs/public/MANIFEST.md` and is served at the public URL.)

---

## Phase 4 — Add Manifest Link to Homepage

Edit `docs/index.md`. Find the "Recently updated" section. It currently ends with the "Troop Ratios Reference" bullet. Add **two** new bullets right after it — the manifest link plus the Combat reports entry (which never made it in either):

```markdown
- **Combat Section — Reports & Garrison Defense** — new pages on reading scout reports, decoding battle reports (including the Bonus Source mechanic), pattern-based adjustment after losses, and the garrison captain trio question
- **Site Manifest** — see [/MANIFEST.md](/MANIFEST.md) for the complete deployed-pages listing, auto-regenerated on every commit
```

Make sure they come **before** the "See the [changelog]..." line at the bottom of that section.

---

## Phase 5 — Generate the Manifest Locally and Verify

```bash
bash scripts/generate-manifest.sh
ls -la docs/public/MANIFEST.md
head -30 docs/public/MANIFEST.md
```

Confirm:
- File exists at `docs/public/MANIFEST.md`
- Header shows current timestamp (today's UTC)
- "Last commit" shows the current HEAD short hash
- "Deployed Pages" section includes the 4 new combat pages (scout-reports, battle-reports, reading-reports, garrison-captain)

---

## Phase 6 — Build Check

```bash
npm run build
```

Should complete without errors. If it fails, the most likely culprit is the homepage edit — confirm the bullet list syntax is clean.

---

## Phase 7 — Commit and Push

```bash
git add -A
git status                          # review what's being committed
git commit -m "Add MANIFEST sync infrastructure: public path, auto-regen GHA, homepage discovery link"
git push
```

Expected behavior after push:
- GitHub Pages deploy workflow runs and publishes the homepage update + new manifest
- The new "Update Manifest" workflow ALSO runs but finds nothing to commit (we already ran the generator locally) — it logs "No manifest changes needed."

---

## Phase 8 — Post-Deploy Verification

Wait 2–3 minutes for GitHub Actions to finish, then verify:

```bash
# Verify Actions ran cleanly
# Open in browser: https://github.com/greenwh/battle-book/actions
# Confirm both workflows (Pages deploy + Update Manifest) succeeded
```

Live URLs to check:
- `https://greenwh.github.io/battle-book/` — homepage should show the two new "Recently updated" bullets, including the manifest link
- `https://greenwh.github.io/battle-book/MANIFEST.md` — should serve the manifest with today's timestamp
- `https://github.com/greenwh/battle-book/blob/main/MANIFEST.md` — should 404 (we deleted it)

When all three check out, tell Bill the sync infrastructure is live. He'll verify on his end by asking chat Claude to read the manifest.

---

## Side Note for Bill — Missed Content Updates

The Battle Reports content deployed, but two structural updates from `CLAUDE_CODE_HANDOFF_battle_reports.md` got skipped:

1. **Changelog entry** — the May 2026 section in `docs/reference/changelog.md` doesn't have an entry for the Combat reports expansion. Should be added before the "SVS Documentation Overhaul" entry.
2. **Glossary terms** — the 12 new terms (Bonus Source, Battle Report, Scout Report, Lethality, Defenders' Edge, Super Nutrients, Lion Intimidation, Enlistment Recovery, Hospital Capacity Signal, Top-4 Mechanic, Wounded vs. Losses, Garrison Captain) weren't added to `docs/reference/glossary.md`.

These aren't blocking — the content is live and findable via the sidebar. But they're cleanup items. Either:
- Pick them up in this same Claude Code session if you have appetite (text is in `CLAUDE_CODE_HANDOFF_battle_reports.md` Phases 4–5), or
- Defer to the next content session and chat Claude can bundle them with the next handoff.

End of recovery handoff.
