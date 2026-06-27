---
title: Changelog
description: Battle Book update history.
search: false
---

# Changelog

A log of every meaningful site update. Helps readers spot stale info and see what's new.

## June 2026

### Server Timeline + Hero Roster

- Added Server Timeline reference page — server-age unlock schedule for hero generations (Gen 1–16), pets, Fire Crystal milestones, experts, and events, with server-age calculation methods.
- Added Hero Roster page — all heroes by generation and class, with acquisition sources (Lucky Wheel / Hall of Heroes / Hall of Chiefs for Gen 1–5; Epic and Rare heroes indexed).

### Strategy Cost References

- New **Fire Crystal Upgrades (FC1→FC10)** page — per-building FC and Refined Fire Crystal costs, refining, unlock windows, upgrade priority. Sequel to Furnace 20→30.
- New **Pet Upgrade Costs** page — Pet Food and advancement materials (Taming Manuals, Energizing Potions, Strengthening Serums) across all five rarity tiers.
- New **Chief Gear Upgrade Costs** page — Hardened Alloy, Polishing Solution, and Design Plan costs per piece and per full set, Uncommon through Mythic T2.
- Cross-links added from Furnace, Chief Gear, and Combat Pets pages.

### Mercenary Prestige

- Added a note that the personal ladder runs 25 mercenaries (no embedded bosses) at higher difficulty tiers, versus the 50-wave lower-tier ladder.

---

## May 2026

### Combat Section Expansion — Reports & Garrison Defense

**Reports & Intel** (3 new pages):

- New `/combat/scout-reports.md` covering pre-attack intelligence — what scout reports show and hide, hospital capacity signals, march status, counter-scouting actions
- New `/combat/battle-reports.md` covering the anatomy of a battle report — the four stats (Attack/Defense/Health/Lethality), casualty breakdown (wounded/losses/enlistment), and the critical **Bonus Source mechanic** (which determines whose hero stats apply in garrison defense)
- New `/combat/reading-reports.md` covering the analytical skill — 6 common battle-report patterns (Infantry Line Collapsed, Marksmen Survived Nothing, Won Stats Lost Fight, etc.), hero/widget swap reference table, when to abandon

**Defensive Coordination** (1 new page):

- New `/combat/garrison-captain.md` covering the captain trio question — why the captain seat is harder than the joiner seat (3 hero skills contribute, not 1), captain trio by generation (Sergey+Patrick+Flint for Gen 1/2, Logan+Sergey+Patrick for Gen 3), defense troop ratios (60/40/0 / 70/30/0 / 60/20/20), pre-lock prep, city defense parallel

**Glossary** — Added 12 terms covering the new Combat section concepts (Bonus Source, Battle Report, Scout Report, Lethality, Defenders' Edge, Super Nutrients, Lion Intimidation, Enlistment Recovery, Hospital Capacity Signal, Top-4 Mechanic, Wounded vs. Losses, Garrison Captain).

**Combat Hub** — Reorganized to add "Reports & Intel" and "Defensive Coordination" sections; added "lost an important rally?" entry point in Where To Start.

---

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

---

### SVS Documentation Overhaul — Battle-Day Lessons Incorporated

Major corrections from the May 2026 SVS event, including in-game rules verification and actual battle-day observations:

**Critical corrections (previously wrong):**
- **Same-state alliances are ENEMIES in SVS Castle Battle**, not friendlies — previously implied otherwise in overview and Sunfire Castle pages. Cannot join allied rallies or reinforce same-state alliances. Blue label ≠ friendly.
- **Reforge trick removed** — hero gear enhancement does not score in SVS. Only Essence Stones (Master Forgery) and Hero Exclusive Gear Widgets score.
- **Alliance lock at 11:00 UTC is not enforced** — softened from "locked" to "designated window; transfers may remain open past 11:00."

**Additions:**
- Same-state alliance enemy behavior + battle alliance jump strategy for small alliances
- 22:00 UTC tally time now explicit throughout (overview, new-member, prep checklist)
- General Shards excluded from prep scoring (only hero-specific shards score)
- Cross-state teleporter behavior: 3 free SoP teleports land randomly; Advanced Teleporters give controlled positioning
- Return-Home button mechanics and post-battle alliance constraint (~17:00–22:00 stuck window)
- Field Triage exclusion for troops in Enlistment Office
- Supreme President controls minister appointments and reward issuance for both states
- Losing state's presidency is vacant when Supreme President is appointed
- Wild Marks (Pet Refinement / Pet Advanced Refinement) added to Day 3 and Day 5 prep checklist
- Pet Advancement also scores Day 5
- Universal "verify in-game before spending" callout at top of prep checklist
- Training Speedups corrected framing (scores Days 1/2/5; used on Day 4 for troop completion)
- Three-bucket scoring model (My Points / Alliance Points / State Points)

**Flagged for next-SVS verification:**
- [ ] **Verify in-game (next SVS):** Confirm what specific buff the State Bonus grants. Battle book says Healing Capacity.

---

### SVS Rules & Prep Phase Verification

- Verified all SVS rules content against May 2026 in-game Rules and Phases screens
- **Added:** Alliance Rewards & Tally Phase rule (members who leave before tally forfeit rewards) — affects overview, new-member, and prep checklist
- **Added:** How Scoring Works subsection explaining My Points / Alliance Points / State Points distinction
- **Added:** State Point Ratio mechanic by Furnace level (Lv. ≥16 = 100%)
- **Clarified:** Supreme President controls minister appointments and reward issuance for both states (previously only buffs/prestige described)
- **Clarified:** Losing state's presidency is vacant when Supreme President is appointed (not split)
- **Added:** Field Triage exclusion for troops in Enlistment Office
- **Updated:** Prep checklist Training Speedups framing (scores on Days 1, 2, 5; used on Day 4 for troop completion only)
- **Added:** Universal "verify in-game before spending" callout at top of prep checklist
- **Added:** Wild Marks (Pet Refinement) to Day 3 and Day 5 prep checklist
- **Flagged for next-SVS verification:** "3 free cross-state teleports" claim, "Healing Capacity" State Bonus type
- [ ] **Verify in-game (next SVS):** Confirm "3 free cross-state teleports per player" is still current. May 2026 in-game rules didn't specify quantity.
- [ ] **Verify in-game (next SVS):** Confirm what specific buff the State Bonus grants in the current event. Battle book says Healing Capacity; in-game says generic "State Bonus."

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

### Strategy Section Launch

- New top-level **Strategy** section added to navigation
- **Daybreak Island** — four-page guide covering overview, building priorities, decoration strategy, and phased progression
- **Furnace 20→30 Guide** — full resource cost table for all required upgrades (Furnace + prerequisites), milestone unlocks, pacing strategy
- Home page "Hero & Gear Strategy" card updated to "Strategy" with link to strategy hub
- Placeholder entries for Heroes, Gear, Pets, and Combat References sections (content coming)

### Alliance Championship Guide Added

- Covers the weekly 5-round round-robin format (6 alliances, 3-lane automated battles, Monday sign-up through Sunday tally), buff capture at registration (community-confirmed — buffs active when you click Register carry into all 5 battles), and lane combat order where weakest marches fight first within each lane
- Details registration optimization: manually setting 50/20/30 troop ratio over the default 33/33/33, the "all register to middle lane then R4/R5 redistributes after Matchmaking" coordination strategy, and the mid-cycle alliance-switch rules (march keeps fighting for original alliance; player receives tier rewards from new alliance)
- Includes the Tier/Star progression system (Honored → Heroic → Royal → Imperial → Ultimate), Prestige Reward skins at Ultimate Tier, Championship Badge shop mechanics (refreshes every 7 days, spend regularly), and a 10-item common-mistakes section

### Crazy Joe Guide Added

- Covers the 20-wave structure (Elite waves 7/14/17 double points for online players only; HQ waves 10 and 20 require full alliance convergence), the trade-troops trick that roughly doubles personal scores, and the two-defeats-and-you're-out mechanic that pivots eliminated players to reinforcement roles
- Details why Marksmen contribute near-zero kills (turn-based combat resolves before they act), the 90/10/0 Infantry/Lancer/Marksman ratio for HQ waves, difficulty levels (21 tiers, progressive unlock by alliance), and why the best individual score is kept across multiple Tuesday/Thursday runs
- Includes wave-by-wave phase breakdown, strategy for F2P through heavy spender, Chief Gear material reward streams (Polishing Solution, Hardened Alloy, Design Plans), and a 10-item common-mistakes section

### Foundry Battle Guide Added

- Covers the three-phase structure (Phase 1 map control 0–15 min, Phase 2 Imperial Foundry push 15–30 min, Phase 3 Weapon Workshops 30–60 min), verified point values for all 11 buildings (Imperial Foundry: 9,000 first capture + 1,800/min), and pre-battle requirements (infirmary cleared, Auto-Hunt off, no marching troops)
- Details the team-split strategy (A1/A2 attack groups for the Foundry; top player + defenders for Phase 1 buildings and Imperial Foundry garrison), the Mercenary Camp's underrated strike-team effect on enemy buildings, and the personal vs. alliance point distinction (personal Arsenal Points don't decide match outcome)
- Includes the Tundra Arms League variant (same map, elimination-bracket tournament), Central Transit Station's 50% teleport cooldown reduction, and the note that March Speed and Deployment Capacity bonuses DO work (unlike Canyon Clash and Frostfire Mine)

### Frostfire Mine Guide Added

- Covers the solo-PvP map structure (three zones by power tier, Lv 1/2/3 Orichalcum Veins, Outburst Veins at minutes 8/9/10/18/19/20 at +200 Orichalcum/second with no guards), the five-level Frostfire Skill Tree (permanent path choice per event), and the two recommended paths: F2P Hunt Path (Right → Right → Left → Left → Right) vs. Spender PvP Path (all Left)
- Details the recall-reoccupy trick: Lv 3 Left grants +5,000 Orichalcum per Vein occupation with 60s cooldown — recalling and reoccupying every 60 seconds yields ~100,000–125,000 bonus Orichalcum over 25 active minutes
- Includes minute-by-minute phase breakdown, power-tier strategy (F2P stays outer zone; whales contest Lv 3 Veins and the Smelter at minute 23), and key restrictions (March Speed bonuses and Presidential buffs disabled inside)

### Hall of Chiefs Guide Added

- Covers the 7 daily themes for the Generation 2 standard format (Power Boost, Hero Development, Train Troops, Gathering, Hero Gear/Power Boost ⭐, Chief Gear Upgrade, Final Hero Development sprint), the core rule that items used on the wrong day score zero, and the Lucky Wheel trick (~90,000 points per spin on Hero Development days)
- Details the Generation 1 vs. Generation 2 progression (exactly 3 Gen 1 events → several Gen 2 events → first SvS permanently replaces HoC with KoI), headline hero rewards (Jeronimo for Gen 1 top 10, Philly for Gen 2 top 10), and why top 10 is effectively pay-gated while top 100 stage rankings are achievable F2P
- Includes the 14-day stockpiling cycle, day-by-day phase breakdown, and the note that the daily-theme discipline learned in HoC transfers directly to King of Icefield and SvS Prep Phase

### King of Icefield Guide Added

- Covers the 7-day cross-state format (6 states matched, Monday–Sunday), the five parallel reward streams (Daily Milestones, Medal of Honor shop, Stage Ranking, Total Ranking, Cross-State Personal + State Rank), and the Medals-first priority — missing one day permanently costs 2 of 14 possible medals with no retroactive recovery
- Details the daily theme structure (City Construction, Hero Development, Basic Skills Up/Pets, Combat Training, Hero Gear/Mithril ⭐ — highest-value day, Combat Training, Final Sprint), the gem-purchased speedup trap (they don't score — only inventory items do), and the "Basic Skills Up" naming confusion (Day 3 = pets; Day 5 = Hero Gear)
- Includes the Daybreak Island Construction Contract in the Medal Shop, cross-state leaderboard mechanics (top 1,000 personal, 250,000+ State Rank threshold), strategy by player type, and the "first cycle of new generation is most competitive" warning for F2P players

### Mercenary Prestige Guide Added

- Covers the 50-wave gauntlet structure (4 difficulty tiers × 5 levels = 20 configurations, progressive unlock across events, every-10th-wave mini-boss), the solo vs. rally stamina cost tradeoff (10 solo vs. 25 rally), and the failed-attack stamina refund mechanic — only the 15-stamina scout cost is consumed on a failed solo attempt
- Details Gina's Endurance Training (up to 20% stamina reduction on marches she leads, saves ~200 stamina per event), the Alliance Captain system (R4/R5 scouts, 30-minute team timer, 1-troop test attack trick to ensure all members qualify for rewards), and the three reward streams (per-wave mail, Stage Reward at Wave 50, Captain rewards)
- Includes stamina economy across a 4-day event (~1,110 stamina to clear all 50 waves solo), Mercenary Contract assist economy (+1 Contract per assist, 7 bonus rewards per day cap), and Mythic Hero Shard rewards scaled by difficulty tier

### Sunfire Castle Battle Guide Added

- Covers the 5-hour intra-state battle structure (October 2025 patch: 5-hour/2.5-hour consecutive hold rule for all servers), Sunfire Castle turret mechanics (compound attack strength against castle holders — turret control is a strategic multiplier, not just a side objective), and the Alert Zone (random teleport 2 hours before; voluntary teleport in permanently deactivates shield)
- Details the three scoring types (Carnage Points from defeating enemies, Occupation Points from troop power while holding positions, Casualty Points from your own wounded troops — making even failed attacks rewarding), the batch-healing-loop technique for F2P point maximization on turrets, and the double-rally counter-attack for final-push scenarios
- Includes the same-state enemies rule (same-state alliances are enemies in both this domestic event AND in SvS Castle Battle — corrected in May 2026), role-based strategy from F2P through R5 coordinator, and the note that all mechanics transfer directly to SvS Castle Battle

### Canyon Clash Guide Added

- Covers the full 6-day event cycle (Monday vote → Wednesday registration → Friday matchmaking → Saturday battle), the Lost Canyon three-island map layout, and the three battle stages: Seize & Conquer (minutes 0–17), Fortress Occupation (17–37), and Citadel Onslaught (37–57) with the ~50,000-point Frozen Citadel bonus
- Details Fuel as the central resource — regeneration, Guardian appointments for Fuel income acceleration, conscription vs. instant-revive cost tradeoffs, and how running out of Fuel in the final 20 minutes loses matches
- Includes eligibility requirements (top-20 Power Leaderboard alliances, Furnace 16+, 5-day active check), the Legion 1/2 system, strategy breakdowns by player type (F2P, active member, R4/R5, heavy spender), and a 12-item common-mistakes section

### Snowbusters Guide Added

- Covers the snow-clearing mini-game loop (25 stages, Fuel management, Survivor rescue, Beast/Snowman combat), the Stage 16 cliff strategy (stop at 16 or save Rocket V2 items to push Stage 19), and bonus stages 5/10/15 with unlimited Fuel
- Details the four-piece gear system (Snowbuster, Gloves, Coat, Snow Boots — resets every event) with the data-driven Coat-first upgrade recommendation and the "stack Super Snowbuster + Infini-Fuel" performance tip
- Explains the Map Fragment collection system (theme-rotating, Stars carry between events), the permanent Snowbusters Island Building unlock at 20 stars, and the Fuel Supply Chest carry-over rule (unopened chests persist; opened Fuel does not)

### Fishing Tournament Guide Added

- Covers both fishing modes (Ice Fishing and Frosty Prospector), the three-piece equipment upgrade system (Line, Hook, Sinker to Lv.10), and the Hook-first vs. Line-first upgrade debate with a practical alternating recommendation
- Details the four collection guides and their permanent rewards: Fish Guide (+2% Troop Attack), Diver Guide (+5% Solo March Speed), Memorabilia Guide (+2% Troop Defense), plus the Sunken Treasure Hunt mechanic that unlocks after gear is maxed
- Includes the max-point combo (Treasure Chart + Horn of Poseidon + Icefisher Voucher), the restart trick for collection grinding, phase-by-phase Day 1–3 actions, and strategy breakdowns for F2P, light spender, and heavy spender players

### Bear Trap Guide Added

- Covers full mechanics: rally vs. solo attack distinction, the rally leader/joiner asymmetry (leader contributes all 9 Expedition skills; joiners contribute only slot 1's first skill), and the top-4 joiner skill selection rule
- Includes trap enhancement (Explosive Arrowheads, Lv.5 = +25% alliance-wide damage), the Cyrille Expert (Furnace 25+), phase-by-phase actions, and a quick-reference card
- Hero recommendations for both rally leaders and joiners (Jessie / Jeronimo / Jasser / Seo-yoon at Lv5 for slot 1), troop ratios for Lead and Join roles, and a common-mistakes section

## April 2026

### Initial Launch

- Site scaffolded with VitePress
- Branding carries forward from the State 4104 SvS guide (dark theme, ice-blue + amber accents, Georgia serif headings)
- Content templates established for events, heroes, combat references, hub pages, and reference data
- Initial content:
  - **SvS Overview** — full event guide ported from the State 4104 SvS guide
  - **SvS Prep Checklist** — interactive day-by-day to-do list
  - **Troop Ratios** — verified compositions for every major activity
  - **Glossary** — initial seed of in-game and alliance terms
  - **Hub pages** — Events, Troops, Reference, Orientation
- Auto-deploy via GitHub Actions to GitHub Pages
- Built-in search across all content
- Mobile-first responsive layout

## What's Coming

This section will be updated as new content lands. Planned additions in rough priority order:

1. **Hero strategy hub** with priority pages for Flint, Molly, Mia, Bahiti
2. **Gear strategy** hub — enhancement priority, reforge strategy, Mythic transfer guide
3. **Combat basics** — rally mechanics, garrison swap, troop replenishment, joining rallies
4. **Pet system** guide
5. Additional event guides (Arena)

---

*See an error or want a guide written? Open an issue on [GitHub](https://github.com/greenwh/battle-book/issues) or message Bill in-game.*
