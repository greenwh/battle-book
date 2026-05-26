# Claude Code Handoff — Dawn Academy + Gen 3 Heroes Update

**Date:** May 26, 2026
**Author:** Claude (chat) — coordinated with Bill in `wos-battle-book` thread
**Purpose:** Deploy new Dawn Academy section (4 pages) + update Heroes section for Gen 3 (5 files: 2 updates, 3 new). Also: install a **MANIFEST file** as a permanent sync mechanism between chat Claude and Claude Code sessions.

**Live site:** https://greenwh.github.io/battle-book
**Repo:** https://github.com/greenwh/battle-book

---

## Important Context — State Drift Discovered

Before this work, chat Claude detected a discrepancy between the deployed site and the changelog. The changelog claims the Heroes/Gear/Pets pages were added in May 2026, but the live `docs/strategy/index.md` still shows them as "Coming soon" and the sidebar in `config.ts` does not include them.

**Phase 0 must verify which scenario you're in:**

- **Scenario A:** The hero/gear/pet content files exist in the repo but `config.ts` and `docs/strategy/index.md` were never updated. Symptom: `ls docs/strategy/heroes/` returns files.
- **Scenario B:** The files don't exist at all and the changelog was updated prematurely. Symptom: `ls docs/strategy/heroes/` returns "No such file or directory."

The handoff is written to handle either scenario. The content script overwrites with `cat >`, so Scenario A's existing files will be safely replaced with the Gen 3 update. Scenario B starts clean.

---

## Phase 0 — State Verification (DO THIS FIRST)

**Goal:** Determine repo state before making any changes. Read-only.

```bash
# Confirm location and environment
pwd                              # should be the battle-book repo root
git status                       # confirm clean working tree (commit any pending work first)
git pull                         # ensure local is up-to-date with origin/main
node --version                   # need >=18
npm list vitepress 2>/dev/null   # confirm vitepress installed

# Survey existing content
echo "=== Existing strategy structure ==="
find docs/strategy -type f -name "*.md" | sort

echo "=== Existing config sidebar (heroes/gear/pets/dawn-academy presence) ==="
grep -n "heroes\|gear\|pets\|dawn-academy" docs/.vitepress/config.ts | head -50

echo "=== Strategy index.md heroes/gear/pets state ==="
grep -n "Coming soon\|/strategy/heroes\|/strategy/gear\|/strategy/pets" docs/strategy/index.md | head -20

echo "=== Glossary current state ==="
wc -l docs/reference/glossary.md

echo "=== Changelog last entries ==="
head -100 docs/reference/changelog.md
```

**Report to Bill:**
- Which scenario you're in (A or B above) for the heroes/gear/pets pages
- Whether Combat section is sidebar-wired (it should be based on live site)
- Any unexpected files or dirty working tree
- Node/npm version

**Wait for Bill's go-ahead before Phase 1.**

---

## Phase 1 — Run the Content Script

The script `create_dawn_academy_and_gen3.sh` (delivered alongside this handoff) creates 9 files. It's idempotent — safe to re-run.

```bash
# Place the script in repo root, then:
bash create_dawn_academy_and_gen3.sh
```

**Output expected:**
- 4 new files in `docs/strategy/dawn-academy/`
- 3 new files in `docs/strategy/heroes/` (mia.md, greg.md, logan.md)
- 2 overwrites in `docs/strategy/heroes/` (index.md, development-roadmap.md)

**If Scenario A** (other heroes already existed): leave Flint, Molly, Bahiti, Alonzo alone — the script only touches the files listed above. The existing heroes don't need changes for this work.

**If Scenario B** (heroes didn't exist): the script still works, but the heroes section will be incomplete (only Mia, Greg, Logan present, plus index pointing to nonexistent Flint/Molly/Bahiti/Alonzo pages). Flag this to Bill. He may want to re-run the prior `create_heroes_section.sh` first.

---

## Phase 2 — Update `docs/.vitepress/config.ts`

Two changes:

**2a — Add Dawn Academy to the `/strategy/` sidebar group.** Insert this block alongside the existing Heroes/Gear/Pets groups (or alongside Daybreak Island if those groups don't exist yet):

```typescript
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
```

**2b — Add Mia, Greg, Logan to the Heroes sidebar group.** Locate the Heroes group (or create one if it doesn't exist). The complete Heroes group should look like:

```typescript
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
```

**Important:** Only include hero entries for files that actually exist (Phase 0 will tell you which). If Flint/Molly/Bahiti/Alonzo pages don't exist, omit them from the sidebar — adding a link to a nonexistent page produces a 404.

---

## Phase 3 — Update `docs/strategy/index.md`

If the Heroes/Gear/Pets sections still say "Coming soon", replace them with linked content per the Heroes guidance below. Also add a new Dawn Academy section.

**Add this new section** to the strategy hub (place it after Heroes/Gear/Pets, before "Where To Start"):

```markdown
## Dawn Academy

The Expert system. Passive, account-wide bonuses across Bear Hunt, gathering, Arena, alliance events, and PvP. Unlocked at Furnace 25 once you recruit your first Expert (Cyrille) via Tundra Trek.

- [Dawn Academy Hub](/strategy/dawn-academy/) — overview, daily routine, F2P philosophy
- [The Experts](/strategy/dawn-academy/experts) — all 9 Experts with skills and priority order
- [Trek Guide](/strategy/dawn-academy/trek-guide) — Tundra vs. Frontier Trek mechanics
- [Resources](/strategy/dawn-academy/resources) — Affinity, Sigils, Books of Knowledge explained
```

**If Heroes section is still "Coming soon", replace** with:

```markdown
## Heroes

Hero priorities, development order, skill leveling, Lucky Wheel planning, and Gen 3 transitions. Generation 3 (Mia, Greg, Logan) is now available for servers past Day 120.

- [Hero Strategy Hub](/strategy/heroes/) — roster planning philosophy and hero index
- [Development Roadmap](/strategy/heroes/development-roadmap) — Gen 1 F20 through Gen 3 transition
- Individual hero pages for Flint, Logan, Molly, Mia, Bahiti, Alonzo, Greg
```

**Update "Recently updated" note** at the top of the page if there is one:
> Most recent additions: Dawn Academy section, Gen 3 hero pages (Mia, Greg, Logan).

---

## Phase 4 — Update `docs/reference/glossary.md`

Add these terms in alphabetical order:

```markdown
**Affinity** — Trust level you build with an Expert in the Dawn Academy. Raised through gifts (Compass, Fiery Heart, Sail of Conquest) and Trek encounters. Pushes Relationship Level.

**Book of Knowledge** — Resource used to upgrade individual Expert skills inside the Dawn Academy. Consumed during Learning sessions.

**Dawn Academy** — City building where Experts reside. Unlocked when you recruit your first Expert via Tundra Trek. Each new Expert adds a dedicated room.

**Digit** — Currency used inside Tundra Trek encounters to influence choices and unlock better rewards. Regenerates through Trek play.

**Expert** — Non-combat character in the Dawn Academy that provides passive, account-wide bonuses to gameplay (Bear Hunt, Arena, gathering, etc.). 9 Experts as of May 2026: Cyrille, Agnes, Holger, Romulus, Baldur, Fabian, Valeria, Ronne, Kathy.

**Frontier Trek** — Targeted Expert progression mode unlocked after 60 Tundra Treks. Pick a specific known Expert and grind their encounters exclusively. Frontier Supplies are mostly paid.

**Generation 3 (Gen 3)** — Hero generation unlocked at ~Day 120 server age. Brings Mia (Lancer/Lucky Wheel), Logan (Infantry/Hall of Heroes), and Greg (Marksman/multi-source). Provides ~+290% troop Attack/Defense buff, up from Gen 2's ~+240%.

**Learning Duration** — Timer that runs while an Expert skill is being upgraded in the Dawn Academy. Cancelling mid-way loses all progress.

**Relationship Level** — An Expert's progression tier (0–100, in 10 Advancement thresholds). Raised through Affinity. Crossing thresholds requires Sigils to Advance.

**Sigil** — Currency that Advances an Expert through their 10 Relationship thresholds. Two types: Expert-specific (e.g., Cyrille Sigils) and Common (convertible to any). Romulus needs ~1,820 to max — by far the most expensive.

**Tundra Trek** — Always-available Expert progression mode. Free daily Trek Supplies (40/day max), random encounters, primary source of Expert unlocks. Do NOT auto — manual play yields better Affinity progression.

**Trek Supply** — Energy resource for Tundra Trek. 40 free per day across 3 timed claims (00:00, 08:00, 16:00 UTC). Storage cap of 100. Gem purchase (1,000 gems for 5 supplies) is poor value.
```

---

## Phase 5 — Update `docs/reference/changelog.md`

Add this entry under the May 2026 section:

```markdown
### Dawn Academy Section Added + Gen 3 Heroes Update

**Dawn Academy** (new section, 4 pages):

- New `/strategy/dawn-academy/` section covering the Expert system
- Overview hub: building mechanics, F2P philosophy, daily routine
- The Experts: full breakdown of all 9 Experts (Cyrille, Agnes, Holger, Romulus, Baldur, Fabian, Valeria, Ronne, Kathy), with Sigil costs and priority order
- Trek Guide: Tundra Trek vs. Frontier Trek mechanics, supply economy, why not to auto
- Resources: Affinity gifts, Sigils, Books of Knowledge, Digits, Learning Duration

**Heroes — Gen 3 Transition** (5 files):

- Updated Hero Strategy hub to reflect Gen 3 availability
- Updated Development Roadmap with Phase 5 (Gen 3 transition: Mia/Greg/Logan)
- New Mia page (Gen 3 Lancer, replaces Molly, Lucky Wheel target, Crystal Lv2 + Expedition Lv5 = rally lead)
- New Greg page (Gen 3 Marksman, debuff specialist, Greg vs. Alonzo decision tree)
- New Logan page (Gen 3 Infantry tank, garrisons + Sunfire Castle holds, Logan vs. Flint decision tree)

**Glossary** — Added 12 terms covering the Dawn Academy and Gen 3.

**Sidebar** — Added Dawn Academy as a Strategy subsection alongside Heroes/Gear/Pets.

**Sync mechanism** — Added `MANIFEST.md` to the repo root to track deployed pages across chat ↔ Claude Code sessions.
```

---

## Phase 6 — Create the MANIFEST (The Sync Mechanism)

**This is the most important part of this handoff.** The state-drift problem we hit (changelog claiming things were deployed when they weren't) needs a permanent solution.

The fix: a `MANIFEST.md` file at the repo root that **Claude Code maintains on every deployment**. Chat Claude fetches its raw GitHub URL at the start of any Battle Book session to know the actual deployed state.

**Create `MANIFEST.md`** at the repo root with this generator script:

```bash
cat > MANIFEST.md << 'EOF_MANIFEST_TOP'
# Battle Book — Site Manifest

This file is the **single source of truth** for what's deployed on the Battle Book.
It's regenerated and committed by Claude Code at the end of every deployment session.

Raw URL for chat Claude to fetch:
https://raw.githubusercontent.com/greenwh/battle-book/main/MANIFEST.md

EOF_MANIFEST_TOP

# Append dynamic content
echo "**Last updated:** $(date +%Y-%m-%d) by Claude Code" >> MANIFEST.md
echo "**Last deploy commit:** \`$(git rev-parse --short HEAD 2>/dev/null || echo 'pending')\`" >> MANIFEST.md
echo "" >> MANIFEST.md
echo "## Deployed Pages" >> MANIFEST.md
echo "" >> MANIFEST.md

for dir in $(find docs -mindepth 1 -maxdepth 1 -type d ! -name '.vitepress' ! -name 'public' | sort); do
  section=$(basename "$dir")
  echo "### \`/${section}/\`" >> MANIFEST.md
  echo "" >> MANIFEST.md
  find "$dir" -name "*.md" | sort | while read -r f; do
    # Convert docs/strategy/heroes/flint.md → /strategy/heroes/flint
    url=$(echo "$f" | sed 's|^docs||; s|\.md$||; s|/index$|/|')
    echo "- \`${url}\` — $(basename "$f")" >> MANIFEST.md
  done
  echo "" >> MANIFEST.md
done

echo "## Top-Level Files" >> MANIFEST.md
echo "" >> MANIFEST.md
for f in docs/*.md; do
  if [ -f "$f" ]; then
    url=$(echo "$f" | sed 's|^docs||; s|\.md$||; s|/index$|/|')
    [ -z "$url" ] && url="/"
    echo "- \`${url}\` — $(basename "$f")" >> MANIFEST.md
  fi
done
echo "" >> MANIFEST.md

echo "## Sidebar Configuration (config.ts excerpt)" >> MANIFEST.md
echo "" >> MANIFEST.md
echo '```typescript' >> MANIFEST.md
# Extract the sidebar object from config.ts — adjust grep range as needed
sed -n '/sidebar:/,/^  },$/p' docs/.vitepress/config.ts >> MANIFEST.md
echo '```' >> MANIFEST.md
echo "" >> MANIFEST.md

echo "## Recent Deployment History" >> MANIFEST.md
echo "" >> MANIFEST.md
git log --oneline -10 2>/dev/null >> MANIFEST.md || echo "(git log unavailable)" >> MANIFEST.md
```

**Save this generator as `scripts/generate-manifest.sh`** in the repo so it can be re-run on future deployments. Make it executable: `chmod +x scripts/generate-manifest.sh`.

**Then run it now** to create the first MANIFEST.md reflecting this deployment.

**Add to standard workflow:** every future deployment that adds/removes pages must regenerate MANIFEST.md before commit. Add a reminder to `MAINTENANCE.md`.

---

## Phase 7 — Verify and Deploy

```bash
# Local preview check
npm run dev
# Visit:
#   http://localhost:5173/battle-book/strategy/dawn-academy/
#   http://localhost:5173/battle-book/strategy/heroes/mia
#   http://localhost:5173/battle-book/strategy/heroes/greg
#   http://localhost:5173/battle-book/strategy/heroes/logan
# Confirm sidebar shows Dawn Academy section and Mia/Greg/Logan in Heroes
# Click each link to confirm pages render

# Build check
npm run build
# Should complete without errors. Common issues:
#  - Broken internal links (e.g., /strategy/heroes/molly if molly.md doesn't exist)
#  - YAML frontmatter typos
#  - Mismatched fenced code blocks

# If build succeeds, commit and push
git add docs/ MANIFEST.md scripts/generate-manifest.sh 2>/dev/null
git status                          # review what's being committed
git commit -m "Add Dawn Academy section + Gen 3 heroes (Mia, Greg, Logan); add MANIFEST sync mechanism"
git push

# GitHub Actions auto-deploys. Live in 2-3 minutes.
```

**Post-deploy verification:**
- Visit https://greenwh.github.io/battle-book/strategy/dawn-academy/ — should load
- Visit https://greenwh.github.io/battle-book/strategy/heroes/mia — should load
- Visit https://greenwh.github.io/battle-book/MANIFEST.md (or the raw GitHub URL) — should show the manifest
- Search box: search "Dawn Academy" — should return results

If anything 404s, the URL in config.ts probably doesn't match the file path. `cleanUrls: true` in config means `docs/strategy/dawn-academy/index.md` becomes `/strategy/dawn-academy/` (no `.html`, no `index`).

---

## Phase 8 — Update MAINTENANCE.md

Add this section to `MAINTENANCE.md` so the sync mechanism doesn't get forgotten:

```markdown
## MANIFEST.md — Source of Truth

Every Claude Code deployment session must regenerate MANIFEST.md before committing:

```bash
bash scripts/generate-manifest.sh
git add MANIFEST.md
```

This file is what chat Claude reads at the start of any Battle Book session to know what's actually deployed. If MANIFEST.md is stale, chat Claude will plan against the wrong state and we'll end up with the kind of drift we saw in May 2026 (changelog claimed pages existed that didn't).

**For chat Claude (you reading this):** at the start of any Battle Book work, fetch:
https://raw.githubusercontent.com/greenwh/battle-book/main/MANIFEST.md

That's the truth. The live site rendering can lag deployment by 2-3 minutes; the changelog can be aspirational; the project knowledge in chat is a snapshot. Only MANIFEST is the source of truth.
```

---

## Notes for Bill

**On the Dawn Academy guide you uploaded:**
- Your guide is accurate on mechanics (Trek Supplies, Affinity, Sigils, Books, Digits, Learning Duration)
- Your guide is out of date on Expert count: it says 4, actual is 9
- I expanded coverage to all 9 Experts using current 2026 sources (AJackOf, BlueStacks, ldshop, wos-guide.com, whiteoutsurvival.wiki)
- F25 unlock requirement still stands per most sources, though an April 2026 update may have reduced state-age requirements — verify in-game when you build it

**On Gen 3 heroes:**
- Mia: confirmed Lucky Wheel primary, S-tier, Crystal Lv2 + Expedition Lv5 = rally-lead threshold (not max star)
- Greg: confirmed multi-source (Hero Rally, Daily Deals, KoI, SvS) — your "Daily Deals" assumption was partially right but he's actually the most diffuse Gen 3 acquisition. F2P accumulates passively.
- Logan: confirmed Hall of Heroes primary + Daily Deals — your assumption was exactly right

**On the Logan vs. Flint and Greg vs. Alonzo decisions:**
- Neither Gen 3 hero is strictly an upgrade over their Gen 2 counterpart. They're different tools.
- Both hero pages include explicit decision trees so alliance members can think it through themselves

**On the sync mechanism:**
- MANIFEST.md is the answer to "how do we keep you two in sync"
- Going forward: every Claude Code session updates MANIFEST.md as the last step before commit
- Every chat session I start with this project, I fetch MANIFEST.md first
- This eliminates the drift we discovered today

---

## Deliverables Summary

Files in this handoff:

1. `create_dawn_academy_and_gen3.sh` — content shell script (9 files created/updated)
2. `CLAUDE_CODE_HANDOFF_dawn_academy_and_gen3.md` — this document
3. (Generated by Claude Code) `MANIFEST.md` — new sync file
4. (Generated by Claude Code) `scripts/generate-manifest.sh` — regeneration script for future runs

End of handoff.
