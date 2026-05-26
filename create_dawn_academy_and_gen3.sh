#!/bin/bash
# Battle Book — Dawn Academy section + Gen 3 Heroes update
# Run from the battle-book repo root: bash create_dawn_academy_and_gen3.sh
#
# Creates 4 new Dawn Academy files in docs/strategy/dawn-academy/
# Creates 3 new Gen 3 hero files (mia.md, greg.md, logan.md) in docs/strategy/heroes/
# Overwrites docs/strategy/heroes/index.md and docs/strategy/heroes/development-roadmap.md with Gen 3 updates
#
# Safe to re-run: cat > overwrites existing files.

set -e

echo "Creating directories..."
mkdir -p docs/strategy/dawn-academy
mkdir -p docs/strategy/heroes

echo "Writing docs/strategy/dawn-academy/index.md..."
cat > docs/strategy/dawn-academy/index.md << 'EOF_DAWN_ACADEMY_INDEX'
---
title: Dawn Academy
description: How the Dawn Academy works, who the Experts are, and how to develop them as a low-spend player.
---

# Dawn Academy

::: info Quick take
The Dawn Academy is a city building that hosts **Experts** — special characters that provide passive, account-wide bonuses across nearly every game mode. Experts don't replace Heroes; they support them. Investing in the right Experts in the right order can multiply your output across Bear Hunt, gathering, Arena, and PvP. Wrong order or wrong picks wastes weeks of Tundra Trek grinding.
:::

## What This Section Covers

- **[Experts](/strategy/dawn-academy/experts)** — all 9 Experts: roles, key skills, Sigil costs, and F2P priority order
- **[Trek Guide](/strategy/dawn-academy/trek-guide)** — Tundra Trek vs. Frontier Trek mechanics, supply economy, and what NOT to auto
- **[Resources](/strategy/dawn-academy/resources)** — Affinity gifts, Sigils, Books of Knowledge, Digits, Learning Duration explained

## How It Works

Once you unlock and recruit your first Expert (Cyrille), the Dawn Academy becomes available to build. Think of it as a university: Experts move in, train their skills, and their growing expertise applies passive bonuses to your entire city.

**Key mechanics at a glance:**

- Each Expert you unlock **adds a dedicated room** to the Dawn Academy — the building physically expands
- Experts have **5 unique skills** each, progressively unlocked and upgraded
- Skills are upgraded through a combination of **Affinity** grinding, **Relationship Level** advancement (via **Sigils**), and **Books of Knowledge**
- Skill upgrades use a **Learning Duration** timer — works like research or construction timers
- Multiple Expert "generations" exist (1st, 2nd, 3rd) — they unlock as your state progresses

## Unlock Requirements

- **Furnace level 25** is the standard gate to begin the Expert system, though community reports indicate the April 2026 update may have reduced the state age requirement. Verify in-game.
- Your first Expert (Cyrille) is unlocked through **Tundra Trek** — completing her storyline and raising her Affinity to **1,000** to invite her into your city
- Once Cyrille is recruited, you can build the Dawn Academy

## How Experts Differ From Heroes

| Heroes | Experts |
|---|---|
| Lead marches and rallies | Stay in the city, provide passive bonuses |
| Combat-active in Exploration/Expedition | No direct combat role |
| Have a troop type (Infantry/Lancer/Marksman) | Type-agnostic — bonuses apply by mode or activity |
| Acquired via Lucky Wheel, HoH, Daily Deals | Acquired via Tundra Trek and Frontier Trek |
| Upgraded with shards, gear, skill manuals | Upgraded with Affinity gifts, Sigils, Books of Knowledge |

Experts and Heroes work side by side. A maxed Cyrille (Bear Huntress) doesn't replace your Flint rally lead — she makes Flint's Bear Trap rally hit harder while you also get more Essence Stones per kill.

## The Expert Generations

As of May 2026, the game has **9 Experts** released in three generations. Newer Experts gate behind hero generation progression (mirroring how Gen 2/3 heroes unlock).

| Generation | Experts | Released |
|---|---|---|
| 1st Gen | Cyrille, Agnes, Holger, Romulus | Aug–Sep 2025 |
| 2nd Gen | Baldur, Fabian, Valeria | Oct–Dec 2025 |
| 3rd Gen | Ronne, Kathy | 2026 (Kathy: Apr 16, 2026) |

See the [Experts](/strategy/dawn-academy/experts) page for skill details and priority order.

## Daily Routine

The Dawn Academy is a daily-touch system, not a binge system. Consistency beats intensity.

1. **00:00 UTC** — Collect 20 Trek Supplies from daily reset
2. **08:00 UTC** — Collect 10 Trek Supplies from the timed claim
3. **16:00 UTC** — Collect 10 Trek Supplies from the second timed claim
4. **Run all Trek Supplies manually** — clear daily Tundra Trek encounters (don't use Auto — see [Trek Guide](/strategy/dawn-academy/trek-guide))
5. **Gift your priority Expert** with any Affinity items earned (Compass, Fiery Heart, Sail of Conquest)
6. **Start or check a Learning session** — queue a skill so it runs while you're offline
7. **Advance Relationship** if you've crossed a threshold and have Sigils ready

Total time commitment: ~10 minutes daily for the supplies + treks, longer if you're at a learning checkpoint.

## F2P Philosophy

The Dawn Academy is one of the most rewarding systems for disciplined F2P/minimal-spend players in WOS — passive, account-wide bonuses are exactly the multiplicative buffs that scale across every mode you play.

The trap is **overreach**. The system gives you many Experts to chase, but most have prohibitive late-game Sigil costs and rapidly diminishing returns past certain Affinity levels. Sticking to the right targets and stopping points is the entire game.

**Three rules that matter most:**

1. **Don't spend gems on Trek Supplies.** 4,000 gems/day for 5 extra supplies is one of the worst gem expenditures in the game.
2. **Don't auto Tundra Trek.** The auto-resolver makes poor decisions and wastes encounters that determine which Expert you progress.
3. **Don't cancel a Learning session.** All progress is lost. If you started Cyrille's skill and an event drops requiring a quick swap, finish what you started.

See the [Experts](/strategy/dawn-academy/experts) page for the recommended development order.

## Related Guides

- [Experts](/strategy/dawn-academy/experts) — full breakdown of all 9 Experts
- [Trek Guide](/strategy/dawn-academy/trek-guide) — how to actually run Tundra and Frontier Treks
- [Resources](/strategy/dawn-academy/resources) — Affinity, Sigils, Books of Knowledge explained
- [Bear Trap](/events/bear-trap) — where Cyrille's bonuses pay off
- [Arena](/strategy/heroes/) — where Holger pays off

---

*Last verified: May 2026 · Sources: AJackOf Experts guide, lootbar.gg Dawn Academy guide, BlueStacks Experts guide, OutofGames Expert overview, whiteoutsurvival.wiki, ldshop.gg expert priority guide*
EOF_DAWN_ACADEMY_INDEX

echo "Writing docs/strategy/dawn-academy/experts.md..."
cat > docs/strategy/dawn-academy/experts.md << 'EOF_DAWN_ACADEMY_EXPERTS'
---
title: The Experts
description: All 9 Experts in the Dawn Academy — skills, Sigil costs, and F2P priority order.
---

# The Experts

::: info Quick take
As of May 2026, there are **9 Experts** across three generations. The development order that matters for most players: **Agnes → Cyrille → Holger → Baldur → (your choice of Valeria/Fabian/Ronne/Kathy based on what you play most) → Romulus last**. Romulus alone requires more Sigils than the next four Experts combined — invest him last regardless of how strong his combat skills look.
:::

## Priority Order

This is the F2P/minimal-spend consensus order as of mid-2026, prioritizing compounding returns over situational power:

1. **Agnes** — universal economic gains (gathering, intel, construction). The highest ROI Expert in the game for low-spend players.
2. **Cyrille** — Bear Hunt scaling. Every alliance runs Bear Trap; everyone benefits.
3. **Holger** — Arena tokens compound into Mithril and Mythic Gear Chests. High value even if you don't push top 500.
4. **Baldur** — alliance event scoring (Crazy Joe, Alliance Championship, Mobilization). Compounds with R4/R5 contribution.
5. **Valeria / Fabian / Ronne / Kathy** — situational, pick based on what your alliance actually contests.
6. **Romulus** — only after everything above is at a useful stopping point. His ~1,820 Sigil cost is a trap for new players.

::: warning Sigil cost reality check
Romulus needs roughly **7× the Sigils** of Cyrille or Agnes to max. Even partial Romulus development displaces months of compounding gains from cheaper Experts. Don't be tempted by his stats sheet — the math doesn't work for F2P.
:::

## Sigil Requirements (Level 100)

| Expert | Role | Sigils to Lv 100 | F2P Priority |
|---|---|---|---|
| **Agnes** | Economy/Development | ~275 | **Highest** |
| **Cyrille** | Bear Huntress | ~275 | High |
| **Holger** | Arena | ~440 | High |
| **Baldur** | Alliance Events | ~440 | High (when unlocked) |
| **Valeria** | SvS / State of Power | ~440 | Medium (SvS-focused) |
| **Fabian** | Foundry Battle | ~440 | Medium (Foundry-focused) |
| **Ronne** | Tundra Trade Route | ~440 | Low–Medium |
| **Kathy** | Frostfire Mine | ~440 | Low–Medium |
| **Romulus** | PvP / Military | **~1,820** | **Last** |

Sigils come in two forms: **Expert-specific** (e.g., Cyrille Sigils) and **Common** (convertible to any Expert). When the calculator tells you to use specific sigils first and Common as fallback, do that — it's almost always correct.

---

## 1st Generation Experts

### Cyrille — Bear Huntress

The first Expert every player unlocks. Built almost entirely for **Bear Hunt**, with massive bonuses to damage, rally capacity, deployment capacity, and Essence Stone rewards.

**Key skills:**

| Skill | Effect at Max |
|---|---|
| **Hunter's Heart** | +30% Bear Hunt Damage Points |
| **Entrapment** | +300,000 Bear Hunt Rally Capacity |
| **Scavenging** | 5× 100-Enhancement XP rewards after every Bear Hunt |
| **Weapon Master** | +5 Essence Stones from Bear Hunt rewards |
| **Ursa's Bane** | +30,000 Bear Hunt Troop Deployment Capacity |

::: tip Skill priority for Bear Trap rally leaders
Push **Hunter's Heart** and **Weapon Master** first — direct points and direct stones. **Entrapment** matters only if your alliance is **not** running a troop cap; if rally capacity is capped by alliance rules, Entrapment is wasted investment.
:::

### Agnes — Elite Politician

The universally-recommended F2P first investment. Agnes's skills affect daily quality-of-life across construction, intel, gathering, and resource generation — compounding gains that benefit every other system.

**Key skills:**

| Skill | Effect at Max |
|---|---|
| **Earthbreaker** | 5 Seeker Chests every 120 min of gathering (up to 30/day) |
| **Efficient Recon** | +8 Intel missions daily |
| **Optimization** | +40 stamina from Patrick's cans (+80 stamina total) |
| **Project Management** | Auto-reduces construction time by 8 hours per new build |
| **Covert Knowledge** | +120 Mystery Badges daily + 4 extra Mystery Merchant refreshes |

::: warning Project Management eats speedups
Project Management auto-applies an 8-hour speedup to every new construction. That's normally great — but during event scoring windows (SvS Prep Day 1 for Construction Speedups), you may want to **pause Agnes development at this skill** or accept that 8 hours of speedups get consumed silently. Plan around it.
:::

### Holger — Arena Legend

Pure Arena specialist. Every skill targets Arena performance or rewards. Underrated for F2P because the **token income** compounds into Mythic Hero Gear Chests and Mithril over months.

**Key skills:**

| Skill | Effect at Max |
|---|---|
| **Blade Dancing** | 3 Arena Star Chests after every win |
| **Arena Elite** | +20% Attack and Health for Arena Heroes |
| **Crowd Pleaser** | +50% Arena Tokens earned (daily + weekly) |
| **Arena Star** | 3 additional discounted Arena Shop items at 50% off |
| **Legacy** | +20% Attack and Health boost for future Heroes |

::: tip Crowd Pleaser is the money skill
Even if you never sniff top 500 Arena, **Crowd Pleaser** is widely cited as the best F2P-friendly skill in the game. Doubling your token income across years of play translates to enormous Mithril and Gear Chest gains.
:::

### Romulus — Military Advisor

The trap. Romulus's skills are strong, but at **~1,820 Sigils to max**, he's structurally not an F2P target. His Expedition Army Size skill adds 10,000 troops, which benefits Bear Hunt, Mercenaries, and Frostfire Mine — but the Sigil cost makes him a luxury for whales or very late-game F2P after every other Expert is parked at a stopping point.

**Verdict for F2P:** Skip until everything above is settled. Don't invest in Romulus shards from the Tundra Trek even if offered — Common Sigils are better banked.

---

## 2nd Generation Experts

### Baldur — Diplomat

Released October 27, 2025. Specializes in **alliance event scoring** — Alliance Showdown points, Crazy Joe rewards, Alliance Championship rewards, and Mobilization. Provides direct, measurable contribution multipliers for active alliance members.

His max-level signature skill grants **+50 Alliance Showdown points and +3 daily Milestone Reward tiers** — meaningful for any active R3+ alliance member.

**Priority:** High once unlocked. Slot him in after Holger.

### Fabian — Master of Arms

Released October 27, 2025. Specialist in **Foundry Battle** and **Tundra Hellfire** — gives +30% Attack and +30% Defense to allied troops in these events at max level, plus +150,000 Rally Capacity.

**Priority:** Conditional. If your alliance contests Foundry Battle seriously, Fabian is high-value. If you're treating Foundry as a participation event, defer.

### Valeria — Dawnbreaker Commander

Released December 23, 2025. **State of Power / SvS specialist** — bonuses on Preparation Phase point gains, Personal Reward tiers, Sunfire Tokens, Battle Phase troop stats, and Rally Capacity in SvS.

Her signature skills include **+30% Lethality and Health to all troops in SvS Battle Phase** and **+150,000 Rally Capacity in SvS Battle Phase**.

**Priority:** High for serious SvS players and rally leaders. Defer if your server isn't competitive in SvS or you skip the event.

---

## 3rd Generation Experts

### Ronne — Tundra Trade Route

Released early 2026. Bonuses target **Tundra Trade Route** — extra cargo from raids, cargo recovery after being raided, and higher-quality escort missions.

**Priority:** Low for most F2P. Tundra Trade Route isn't a daily core mode for most players. Develop after Baldur and your situational Expert.

### Kathy — Mine Leader

Released **April 16, 2026** — the newest Expert as of this writing. Focuses on **Frostfire Mine** — Mine Patrol XP, Frostfire troop capacity, hero recovery speed, and Lethality/Health during Frostfire Mine battles.

**Priority:** Conditional. If your alliance pushes for Frostfire Mine rankings, Kathy is high-value. If you participate casually or get suppressed by stronger states, defer.

---

## Choosing Your "Situational" Expert (Slot 5)

After Agnes → Cyrille → Holger → Baldur, the next Expert depends on what your alliance actually contests:

| If you play... | Pick |
|---|---|
| Competitive SvS | Valeria |
| Foundry Battle seriously | Fabian |
| Frostfire Mine seriously | Kathy |
| Tundra Trade Route | Ronne |
| None of the above competitively | Stay parked at Baldur, save resources |

You don't need all of them. Pick one situational Expert and commit, then revisit the others only after you've hit useful stopping points everywhere else.

## Common Mistakes

1. **Rushing Romulus because his stats look good.** His Sigil cost is structurally hostile to F2P. Develop him last or skip entirely.
2. **Investing evenly across all Experts.** Spreading thin means none of them are useful. Pick the priority order, commit, stop.
3. **Using gems on Trek Supplies.** 1,000 gems = 5 supplies = roughly 5 encounters. Worst gem expenditure in the game.
4. **Auto-running Tundra Trek.** Auto picks suboptimal options in encounters, slows Affinity gain, wastes Expert storyline progression.
5. **Ignoring Project Management eating event speedups.** Agnes's auto-applied 8-hour construction speedup can silently burn Construction Speedups during SvS Prep Day 1.
6. **Saving Books of Knowledge for SvS scoring forever.** Some players hoard Books for event scoring; others argue passive benefits from immediate use outweigh event points. Decide based on whether your server competes for SvS top 100.

## Related Guides

- [Dawn Academy Hub](/strategy/dawn-academy/) — system overview
- [Trek Guide](/strategy/dawn-academy/trek-guide) — how to actually run Treks
- [Resources](/strategy/dawn-academy/resources) — Sigils, Books, Affinity gifts
- [Bear Trap](/events/bear-trap) — where Cyrille pays off
- [SvS Overview](/events/svs/overview) — where Valeria pays off

---

*Last verified: May 2026 · Sources: AJackOf Experts guide, lootbar.gg Dawn Academy guide, BlueStacks Experts guide, ldshop.gg expert priority guide, wos-guide.com cultivation guide, whiteoutsurvival.wiki/experts/valeria, woscalculator.com experts*
EOF_DAWN_ACADEMY_EXPERTS

echo "Writing docs/strategy/dawn-academy/trek-guide.md..."
cat > docs/strategy/dawn-academy/trek-guide.md << 'EOF_DAWN_ACADEMY_TREK_GUIDE'
---
title: Trek Guide
description: How Tundra Trek and Frontier Trek work, Trek Supply economy, and why you should never auto.
---

# Trek Guide

::: info Quick take
**Tundra Trek is how you *meet* Experts. Frontier Trek is how you *target* the ones you already know.** Tundra is your daily F2P workhorse — free supplies, random encounters, the primary source of Expert unlocks. Frontier eliminates the randomness once unlocked, but Frontier Supplies are mostly paid. Tundra is your main mode. Don't auto.
:::

## Tundra Trek — The Free Mode

The core exploration mode, always available from Furnace 25. You spend Trek Supplies to travel stop by stop, encountering a mix of combat, story moments, resource rewards, and Expert cameos.

**The key tradeoff:** Tundra Trek is completely F2P-powered but you have no control over which Expert you run into next. It's somewhat random, which is the main drawback. The upside: it's how you first unlock each Expert by following their storyline and raising Affinity to 1,000.

### Trek Supplies — Your Energy

| Source | Amount | Timing |
|---|---|---|
| Daily Reset | 20 Trek Supplies | 00:00 UTC daily |
| Timed Claim #1 | 10 Trek Supplies | 08:00 UTC daily |
| Timed Claim #2 | 10 Trek Supplies | 16:00 UTC daily |
| Gem Purchase | 5 Supplies for 1,000 Gems | Up to 4× daily |

**Total free supplies per day:** 40. Storage cap: **100 supplies maximum**. Don't let them cap out — you lose the overflow.

::: warning Gem purchases are bad value
Spending 4,000 gems/day for 20 extra supplies is one of the worst gem expenditures in WOS. Stick to the free daily claims. The 1,000-gem ÷ 5-supply rate is roughly 4× the gem cost of any other timer-bypass in the game.
:::

### What Happens in a Stop

Each "Stop" costs 1 Trek Supply and triggers an encounter. Encounters come in several types:

- **Combat** — fight enemies, gain Expert Affinity if it's an Expert-themed stop
- **Story interactions** — multi-option dialogue that pushes Expert storylines forward
- **Mini-games** — small puzzles or choices that determine reward quality
- **Hero/Expert cameos** — your existing heroes or Experts appear with bonuses or interactions
- **Resource rewards** — flat rewards (Affinity items, Sigils, Books of Knowledge, Digits, basic resources)

The encounter you get is somewhat random, but you have **choices within most encounters** that affect outcomes. This is why Auto fails.

## Frontier Trek — The Targeted Mode

Frontier Trek unlocks after you complete **60 Tundra Treks**. Once unlocked, you assign a specific Expert you've already met, and every encounter is focused exclusively on that Expert.

**Key rules:**

- You can only target **Known Experts** — ones already met through Tundra Trek
- You cannot assign an Expert you're currently mid-encounter with in Tundra Trek
- Frontier encounters cap how much Affinity they raise directly, but compensate with Expert **Gift items** (Compass, Fiery Heart, etc.) to raise Affinity manually
- Frontier Supplies have **no storage cap** — stockpile as many as you want
- Frontier Supplies are obtained mainly through **paid packs**, VIP Shop (~750 Gems each), or occasional special events — they are rarely earned for free

### Mode Comparison

| Feature | Tundra Trek | Frontier Trek |
|---|---|---|
| Availability | Always, from F25 | After 60 Tundra Treks |
| Cost | Free daily supplies (+ optional Gems) | Frontier Supplies — mostly paid |
| Expert targeting | Random — no control | Pick exactly which Expert |
| Best for | F2P, initial unlocks | P2P, focused grinding |
| Supply cap | 100 max | Unlimited stockpile |
| Auto mode | Technically yes — **NOT recommended** | Can be auto'd safely |
| Unlocks new Experts? | Yes — required first step | No — only known Experts |

::: tip F2P bottom line
Frontier Supplies are very hard to earn for free. Treat Frontier Trek as a **bonus** if supplies come your way (event rewards, special packs you happened to buy) — **Tundra Trek is your main mode** as an F2P player.
:::

## Why You Don't Auto Tundra

The Auto button exists. It does not pick well. Multiple community sources confirm Auto consistently makes poor decisions in encounter choices, which means:

- **Lower Affinity gain per supply spent** — Auto picks the visible immediate reward instead of the storyline branch
- **Missed Expert storyline progression** — story-gated unlocks slow down or stall
- **Suboptimal mini-game outcomes** — Auto plays mini-games naively
- **Wasted Digits** — Auto spends Digits on low-value choices

The community consensus is unanimous: **manual play Tundra Trek**. Each encounter takes 20–60 seconds. For 40 free daily supplies, that's roughly 15–25 minutes of attention — significant, but the difference in Expert progression speed is large.

**Frontier Trek, by contrast, is safe to auto** since encounters are focused on a specific Expert and the variance in choices matters less.

## Encounter Choice Heuristics

When playing Tundra Trek manually, here's how to think about choices:

1. **Affinity gain over flat rewards** if the encounter involves your priority Expert (Agnes, Cyrille, etc.)
2. **Storyline progression over Affinity** if the choice is "advance the story" vs. "+small Affinity bonus" — storyline gates Expert unlocking
3. **Digit-spending options** when they offer rare drops (Sails of Conquest, larger Sigil bundles, Books of Knowledge)
4. **Combat over flight** when the Expert tied to the encounter is one you want — combat usually yields more Affinity than fleeing

You don't need to memorize encounter trees. Just pay attention to which Expert is featured and pick options that advance their storyline or boost their Affinity.

## Common Mistakes

1. **Letting Trek Supplies cap.** 100-cap means 60 supplies wasted across the day if you don't claim. Set a phone reminder for the 08:00 and 16:00 UTC claims.
2. **Auto-running Tundra Trek.** Saves time, loses Expert progression. The math doesn't favor it.
3. **Spending gems on Trek Supplies.** Hard skip. Even at peak F2P optimization, 1,000 gems for 5 supplies is bad.
4. **Frontier Trek before 60 Tundra Treks.** It's gated. Don't expect to unlock it on Day 2.
5. **Burning Frontier Supplies on a poor-priority Expert.** Romulus shows up in Frontier sometimes — don't waste supplies on him if Agnes or Cyrille aren't done.
6. **Not gifting Affinity items.** Compass (+10), Fiery Heart (+100), Sail of Conquest (+1,000) accumulate in your inventory. Gift them to your priority Expert immediately — they don't expire but they do cap at relationship thresholds.

## Daily Trek Checklist

```
☐ 00:00 UTC — Claim 20 Trek Supplies (daily reset)
☐ 08:00 UTC — Claim 10 Trek Supplies (timed)
☐ 16:00 UTC — Claim 10 Trek Supplies (timed)
☐ Run all supplies manually (don't auto)
☐ Gift priority Expert with any Affinity items earned
☐ Start a Learning session in the Dawn Academy
☐ Check Relationship Level progress for Advancement readiness
```

## Related Guides

- [Dawn Academy Hub](/strategy/dawn-academy/) — system overview
- [Experts](/strategy/dawn-academy/experts) — who to target
- [Resources](/strategy/dawn-academy/resources) — what the Affinity items, Sigils, and Books are

---

*Last verified: May 2026 · Sources: AJackOf Experts guide, lootbar.gg Dawn Academy guide, OutofGames Expert overview, whiteoutsurvival.wiki*
EOF_DAWN_ACADEMY_TREK_GUIDE

echo "Writing docs/strategy/dawn-academy/resources.md..."
cat > docs/strategy/dawn-academy/resources.md << 'EOF_DAWN_ACADEMY_RESOURCES'
---
title: Resources
description: Affinity gifts, Sigils, Books of Knowledge, Digits, and Learning Duration — what they are and how to use them.
---

# Dawn Academy Resources

::: info Quick take
The Dawn Academy economy uses four resource types: **Affinity items** (gifts) that raise Relationship Level, **Sigils** that Advance an Expert at thresholds, **Books of Knowledge** that upgrade individual skills, and **Digits** that influence Trek encounter outcomes. Understanding what each does — and which to bank for SvS scoring vs. spend immediately — determines how fast your Experts develop.
:::

## Progression Path

Before diving into individual resources, here's how they connect:

| Step | Action | Resource Needed | Result |
|---|---|---|---|
| 1 | Raise **Affinity** | Compass, Fiery Heart, Sail of Conquest | Builds trust; pushes Relationship Level |
| 2 | Raise **Relationship Level** | Automatic from Affinity gains | Unlocks Skills + stat boosts |
| 3 | Hit **Advancement Threshold** | Every 10 Relationship Levels = 1 threshold (10 total) | Unlocks ability to Advance |
| 4 | **Advance the Relationship** | Expert Sigils | Major stat boost + access to higher-level skills |
| 5 | **Upgrade Skills** | Books of Knowledge + Learning Duration | Skills become more powerful |
| 6 | Repeat through Level 100 | Continued gifting + Trekking | Maxed Expert |

## Affinity Gifts

**Affinity** is raised by gifting items to an Expert. You can also earn Affinity by completing Trek encounters tied to that Expert.

| Item | Affinity Gained |
|---|---|
| **Compass** | +10 Affinity |
| **Fiery Heart** | +100 Affinity |
| **Sail of Conquest** | +1,000 Affinity |

**Key mechanics:**

- Each Expert has **100 Relationship Levels**, divided into **10 Advancement thresholds** (every 10 levels)
- Reaching a threshold requires **Sigils** to advance through
- Affinity items don't expire, but they soft-cap at thresholds — you can pile up Affinity past a threshold, but actually advancing requires Sigils
- **Gift items can be focused on one Expert at a time** — choose your priority

### Where to Get Affinity Items

- **Tundra Trek** encounters (primary F2P source — gift items are common rewards)
- **Frontier Trek** encounters (heavier focus on gift items than direct Affinity)
- **Daily Mystery Merchant** (occasional Compass and Fiery Heart stock)
- **Event rewards** (SvS, Bear Trap, Alliance Showdown can include gift items)
- **VIP Shop** (limited daily/weekly stock)

## Sigils

Sigils work like **Hero Shards** — they're the currency to **Advance** an Expert through their 10 Relationship thresholds. Two types exist:

- **Expert-Specific Sigils** (e.g., "Cyrille Sigils") — usable only for that Expert
- **Common Sigils** — convertible to any specific Expert's Sigils

::: tip Smart Sigil allocation
Most Expert calculators have a "Smart Allocation" toggle that uses Expert-specific Sigils first and falls back to Common Sigils only when specifics are depleted. This is almost always the right strategy — Common Sigils are more flexible and should be conserved.
:::

### Sigil Totals to Level 100

| Expert | Sigils Needed |
|---|---|
| Agnes | ~275 |
| Cyrille | ~275 |
| Holger | ~440 |
| Baldur | ~440 |
| Valeria | ~440 |
| Fabian | ~440 |
| Ronne | ~440 |
| Kathy | ~440 |
| **Romulus** | **~1,820** |

The Romulus disparity is real. It's not a typo. He needs more Sigils than Agnes + Cyrille + Holger combined. Plan accordingly — see the [Experts page](/strategy/dawn-academy/experts) for priority advice.

### Where to Get Sigils

- **Tundra Trek** rewards (primary F2P source)
- **Special events** (occasional Sigil packs)
- **Purchases** (Sigil packs in the store — P2P primary)

## Books of Knowledge

**Books of Knowledge** upgrade individual Expert skills inside the Dawn Academy. Think of them as skill scrolls — consumed during Learning sessions when a skill is advancing to the next tier.

### Where to Get Books of Knowledge

- **Tundra Trek** — primary F2P source
- **Special events and passes**
- **Alliance activities and rewards** (including some Alliance Showdown milestones)

::: warning SvS hoarding question
Some players save Books of Knowledge for **SvS Day 2 and Day 3** for event scoring. Others argue that passive benefits from upgrading immediately outweigh holding for SvS points.

**Decision framework:**
- Server competitive for SvS top 100 personal? → Hoard for SvS, time the spend.
- Casual SvS participation? → Spend immediately, capture passive benefits.
- Active competitor for SvS Alliance Top 3? → Hoard, then coordinate with your alliance on burn timing.
:::

## Digits

**Digits** are a currency used inside **Tundra Trek** encounters. They power decisions, choices, and mini-game outcomes during your trek journey.

**Practical uses:**

- Spend Digits on encounter options that advance Expert Affinity
- Spend on options that yield rare drops (Sails of Conquest, larger Sigil bundles)
- Avoid spending Digits on flat resource rewards (basic Meat, Wood, etc.) — those are abundant elsewhere

Digit reserves regenerate through Tundra Trek play. They're not a primary bottleneck for most players, but be deliberate about when you spend them — they make the difference between a "Sail of Conquest" outcome and a "+50 wood" outcome on the same encounter.

## Learning Duration

**Learning Duration** is the timer that runs while an Expert skill is being upgraded inside the Dawn Academy. It functions exactly like research or construction timers.

### Key Rules

- The **longer** the Learning session you set, the **more Skill XP** the Expert earns per cycle
- You can use **Learning Speedups** (or General Speedups) to instantly complete the timer
- You can **cancel a Learning session mid-way**, but you **lose all progress** for that session
- Only **one skill can learn at a time** per Expert
- Multiple Experts can have parallel Learning sessions (one per Expert, simultaneously)

::: tip Queue overnight
Start your longest Learning session right before logging off for the night. Set-and-forget — timer runs while you sleep, collect the upgrade in the morning. Same logic as research and construction queues.
:::

::: warning Never cancel a Learning session
The "lost progress" penalty is total. If you start Cyrille's Hunter's Heart upgrade and an event drops asking you to switch to Agnes, **finish what you started first**, then queue the next.
:::

## Resource Sources Summary

| Resource | Best F2P Source | Best Paid Source |
|---|---|---|
| **Affinity items** | Tundra Trek encounters | Daily Deals packs |
| **Expert-specific Sigils** | Tundra Trek (random) | Sigil packs in store |
| **Common Sigils** | Event rewards | Frontier-related bundles |
| **Books of Knowledge** | Tundra Trek + Alliance events | Special passes |
| **Digits** | Tundra Trek play | Generally not sold |
| **Frontier Supplies** | Rare event drops | Daily Deals / VIP Shop |

## Daily Resource Routine

1. **Gift first thing** — any Affinity items in your inventory go to your priority Expert immediately
2. **Run Tundra Trek manually** — accumulates all 5 resource types
3. **Check Learning queue** — start a new session if the prior one finished
4. **Check Relationship Level** — if you hit a 10-level threshold, advance with Sigils (don't sit on it)
5. **Bank Common Sigils** — don't dump them into Common-acceptable Experts unless that Expert is your active development target

## Common Mistakes

1. **Hoarding Affinity items past the point of usefulness.** They don't expire, but they don't compound either. Use them on your priority Expert.
2. **Spending Common Sigils on Romulus "just to make progress."** You're robbing your other Experts of flexibility. Save Common Sigils for whichever Expert is closest to their next threshold.
3. **Canceling Learning sessions because of FOMO.** Whatever you're trying to switch to can wait the few hours. Finish the current session.
4. **Ignoring Digits.** They feel minor, but spending them on the right encounter options is the difference between a Sail of Conquest and a 50-wood reward.
5. **Hoarding Books for SvS without an actual competition target.** If you're not seriously competing for SvS top 100 personal, the SvS bonus from Books is smaller than the passive benefits you forfeit by hoarding.

## Related Guides

- [Dawn Academy Hub](/strategy/dawn-academy/) — system overview
- [Experts](/strategy/dawn-academy/experts) — who to target and in what order
- [Trek Guide](/strategy/dawn-academy/trek-guide) — how to actually run Treks
- [SvS Prep](/events/svs/prep-checklist) — where to consider Book/Sigil burn timing

---

*Last verified: May 2026 · Sources: AJackOf Experts guide, lootbar.gg Dawn Academy guide, OutofGames Expert overview, whiteoutsurvival.wiki, woscalculator.com experts*
EOF_DAWN_ACADEMY_RESOURCES

echo "Writing docs/strategy/heroes/index.md..."
cat > docs/strategy/heroes/index.md << 'EOF_HEROES_INDEX'
---
title: Hero Strategy
description: Hero priorities, development order, skill leveling, and roster planning for Whiteout Survival.
---

# Hero Strategy

::: info Quick take
Your hero roster determines your ceiling in every game mode. The key insight: invest deeply in a few heroes rather than spreading thin across many. One fully developed Mythic hero outperforms three half-built ones. With **Generation 3 now available** (Mia, Greg, Logan), the meta has shifted — the transition plan from Gen 1/2 to Gen 3 is documented in the [Development Roadmap](/strategy/heroes/development-roadmap).
:::

## How Heroes Work

Every hero has a troop type (Infantry, Lancer, or Marksman), two skill trees (Exploration for Arena/hero combat, Expedition for world map/rally/troop combat), a gear set (4 pieces + exclusive weapon at 1★), and a star level (0–5★) that gates skill level caps.

The three troop types form a rock-paper-scissors triangle: Infantry tanks and counters Lancers, Lancers flank and counter Marksmen, Marksmen deal ranged damage and counter Infantry. A balanced roster needs at least one strong hero of each type.

Each new generation of Mythic heroes provides progressively higher troop buffs:

| Generation | Troop Buff (Expedition) |
|---|---|
| Gen 1 | ~+200% |
| Gen 2 | ~+240% |
| **Gen 3** | **~+290%** |

The roughly 50% Attack/Defense uplift from Gen 2 → Gen 3 is the single biggest reason to plan the transition properly.

## Guides in This Section

### Development Roadmap

A phased progression plan from Gen 1 Furnace 20 through Gen 3 — for any alliance member at any stage.

- [Development Roadmap](/strategy/heroes/development-roadmap) — what to build and when, from your first Mythic hero through the Gen 3 transition

### Individual Hero Pages

Detailed breakdowns for each primary roster hero — skills, gear priority, F2P stopping points, and what they're best (and worst) at.

**Infantry**
- [Flint](/strategy/heroes/flint) — S-tier Gen 1 rally leader, post-rework
- [Logan](/strategy/heroes/logan) — Gen 3 Infantry tank, defensive specialist

**Lancer**
- [Molly](/strategy/heroes/molly) — Gen 1 Lancer, bench depth once Mia takes over
- [Mia](/strategy/heroes/mia) — Gen 3 Lancer, S-tier with Crystal Lv2 + Expedition Lv5

**Marksman**
- [Bahiti](/strategy/heroes/bahiti) — best Epic Marksman, placeholder until Alonzo
- [Alonzo](/strategy/heroes/alonzo) — Gen 2 Mythic Marksman, strong rally leader
- [Greg](/strategy/heroes/greg) — Gen 3 Marksman, debuff specialist + rally amplifier

### Not Yet Covered

B-team heroes (Sergey, Gina, Jessie, Jasser, Patrick) play important supporting roles — Jessie is an S-tier rally joiner, Sergey is a strong defensive joiner — but their development priority is lower than the heroes above. Pages will be added once the primary Gen 3 roster is documented.

## Key Principles

**Buffs interact multiplicatively.** A 10% hero buff is worth more when your gear, pets, research, and island buffs are already high. Broad investment across systems beats maxing a single hero.

**Lucky Wheel: 120 spins per event is the value ceiling.** Beyond 120 spins, the cost per shard increases sharply. Stop accumulating shards at 4★ — the 5★ push is poor ROI for F2P and minimal-spend players. This applies equally to Flint, Mia, and any future Wheel hero.

**Your best rally leader ≠ your best rally joiner.** See [Rally Joining](/combat/rally-joining) for why this matters and which heroes to use for each role.

**Same-type gear transfers are free.** When Mia replaces Molly, all of Molly's Lancer gear (Goggles, Boots, Gloves, Belt) transfers to Mia at zero cost. Same for Alonzo inheriting Bahiti's Marksman gear, or Logan inheriting Flint's Infantry gear if you go that route.

**Generation acquisition pattern** (Gen 2 → Gen 3):

| Gen 2 | Gen 3 | Role | Primary Source |
|---|---|---|---|
| Flint | **Logan** | Infantry | Hall of Heroes |
| Philly | **Mia** | Lancer | Lucky Wheel |
| Alonzo | **Greg** | Marksman | Multi-source (Hero Rally, Daily Deals, KoI, SvS) |

Each generation's Lucky Wheel hero is your primary gem-saving target. Mia is now that target.

## Where to Start

**New player at F20–F22:** Read the [Development Roadmap](/strategy/heroes/development-roadmap) — it shows where you're going and why Phase 1 (Epic foundation) matters before any Mythic acquisition.

**Mid-game F22–F28:** Focus on completing your Gen 1/2 Mythic core (Flint, Molly, Bahiti → Alonzo) before chasing Gen 3 acquisitions. The Gen 3 transition section of the roadmap explains the why.

**Server entering Gen 3:** Jump to the [Mia](/strategy/heroes/mia) page for Lucky Wheel planning and the gear transfer plan. Then plan Greg/Logan based on which events you contest most.

---

*Last verified: May 2026 · Sources: allclash.com Gen 3 hero tier list, bluestacks.com hero combinations guide, lootbar.gg hero tier list, whiteoutsurvivalhandbook.com Mia/Greg/Logan guides, whiteoutdata.com Gen 3 heroes*
EOF_HEROES_INDEX

echo "Writing docs/strategy/heroes/development-roadmap.md..."
cat > docs/strategy/heroes/development-roadmap.md << 'EOF_HEROES_DEVELOPMENT_ROADMAP'
---
title: Hero Development Roadmap
description: Phased hero progression from Gen 1 Furnace 20 through Gen 3 — for alliance members at all stages.
---

# Hero Development Roadmap

::: info Quick take
This is the phased progression plan for hero development from Gen 1 F20 through Gen 3. It's not personalized to any one account — it's the framework any Ice Kings member can follow. **Generation 3 (Mia, Greg, Logan) is now available** as of mid-2026 for servers past Day 120; the Phase 5 section covers the transition plan.
:::

## Phase 1: Gen 1 Foundation (F18–F22)

You start with Epic heroes from story progression and Hall of Heroes:

- **Sergey** — Infantry, defensive
- **Gina** — Marksman, attack speed
- **Jessie** — Lancer, S-tier rally joiner
- **Bahiti** — Marksman, best Epic in class
- **Patrick** — Infantry, defensive joiner
- **Jasser** — Lancer, A-tier rally joiner

**Goals:**
- Level all three classes to 60+, stars to 3★ minimum
- Exploration skills to Lv3 for Arena competitiveness
- Epic gear on priority slots, enhance to +30 minimum
- Save gems for your first Lucky Wheel (Flint target)

Focus on your primary of each type first.

## Phase 2: First Mythic Hero (F22–F25)

Your first Mythic hero arrives via Lucky Wheel. **Flint (Infantry) is the consensus #1 target** for Gen 1/2 servers. His January 2026 skill rework made him the strongest rally leader available to your generation.

**Lucky Wheel rules:**
- Save gems for 120 spins — this is the value ceiling
- 120 spins costs approximately 175,500 gems
- Beyond 120 spins, cost per shard increases sharply
- Stop accumulating shards at 4★ (5★ is poor ROI for F2P)

**When Flint arrives:**
- Transfer Sergey's Infantry gear to Flint — same-type transfer is free
- Push Flint's Expedition skills to Lv4 immediately (Burning Resolve first — it's the money skill)
- Push Flint's priority gear (Gloves + Belt) toward Mythic with enhancement to +45 minimum
- Keep Sergey as secondary Infantry / defensive rally joiner

::: tip Flint shards are scarce
Flint shards are Lucky Wheel-gated. Molly shards arrive through normal gameplay (Hall of Heroes, events). If you ever have to choose between Flint shards and Molly shards, **always choose Flint**.
:::

## Phase 3: Second Mythic + Roster Balance (F25–F28)

**Second Mythic target: Molly (Lancer)** via Lucky Wheel or Hall of Heroes progression. She's your Lancer upgrade over Jessie for leading purposes (Jessie stays as your S-tier joiner).

**Bahiti (Epic Marksman)** fills the Marksman slot well at this stage. She's the best Epic Marksman available and will serve you until Alonzo is ready.

**What to do:**
- Push Molly's priority gear (Goggles + Boots) to Mythic, enhance to +45
- Begin Alonzo shard accumulation via Hall of Heroes (passive grind — 1 purchase per cycle, don't rush)
- Push all active roster heroes' Expedition skills to Lv4
- Bahiti: push to 4★, Mythic Goggles/Boots to +52

**Gem discipline:** Start stockpiling gems for Mia's Lucky Wheel. On strict F2P accounts, pause Alonzo Hall of Heroes gem purchases to build the Mia fund.

## Phase 4: Gen 2 Maturity (F28–F30)

This is the consolidation phase — finishing what you've started before the Gen 3 transition.

**Targets:**
- Flint at 3–4★ with Mythic Gloves/Belt at +55+ MF3
- Molly at 3–4★ with Mythic Goggles/Boots at +45 MF2
- Bahiti at 4★ with Mythic Goggles/Boots at +52 MF2–3
- All active heroes' Expedition skills at Lv4+
- Begin targeting Lv5 skills on Flint (Burning Resolve → Lv5 is the #1 Lv5 target on any Gen 2 roster — requires 4★)

**Hero to watch:** Alonzo should be approaching 2–3★ from passive HoH accumulation. Don't force it — he's not roster-ready until 3★ with Expedition skills at Lv3+.

## Phase 5: Gen 3 Transition (F30+, ~Day 120 server age)

Generation 3 unlocks when your state hits approximately 120 days. Three new Mythic heroes become available, each providing a substantial troop attack/defense boost (+290% vs. Gen 2's +240%):

| Gen 3 Hero | Class | Primary Acquisition |
|---|---|---|
| **Mia** | Lancer | Lucky Wheel (Hero Rally) |
| **Logan** | Infantry | Hall of Heroes + Daily Deals |
| **Greg** | Marksman | Hero Rally, Daily Deals, King of Icefield, SvS |

### Mia replaces Molly (priority 1)

- Lucky Wheel → 4★ target (120 spins, ~175,500 gems)
- ALL of Molly's Lancer gear transfers to Mia for free — same troop type
- Every gem invested in Molly's gear is now Mia's investment
- Molly moves to bench or secondary Lancer role
- **Crystal Lv2 + Expedition skills at Lv5 = rally-lead ready** (don't wait for max star)

### Alonzo or Greg as primary Marksman

This is the most interesting Gen 3 decision. If your Alonzo is already at 3★+ with Mythic gear, he remains a strong rally lead via Captain Ahab's 15% lethality. **Greg is not strictly an upgrade over a developed Alonzo** — he's a *different* Marksman:

- **Alonzo's strength:** Captain Ahab + rally lethality, all-troop Expedition buffs
- **Greg's strength:** Marksman-specific Attack (280%+), Fair Judgment damage amplification, Courtroom Order silence
- **The choice:** If you're heavily Marksman-deploy in rallies, Greg's Marksman buffs hit harder. If you run mixed-troop rallies, Alonzo's all-troop buffs are more universal.

For F2P, **finish developing Alonzo first** before adding Greg shards. Greg's diffuse acquisition (KoI, SvS, Daily Deals, Hero Rally) means you'll accumulate him passively as you play.

### Logan as defensive specialist

Logan is **the strongest tank in Gen 3** — +25% troop Health and +20% damage reduction at max. He shines in:

- **Garrisoning** Sunfire Castle, Foundry buildings, SvS positions
- **Frontline defense** in PvP exchanges
- **Bear Trap rallying** for capacity (less so for damage)

Logan is **not strictly better than Flint as a rally leader.** Flint still has superior offense (Burning Resolve + Immolation post-rework). Use Logan where Flint isn't ideal — defensive holds, Foundry garrisons, Sunfire Castle. Develop Logan after Mia is at 3★ minimum.

### Post-Gen 3 Transition Roster

After the transition lands, your active roster looks like:

1. **Flint** (Infantry) — primary rally leader, fully developed
2. **Mia** (Lancer) — primary, inherits Molly's gear
3. **Alonzo or Greg** (Marksman) — primary, inherits Bahiti's gear
4. **Logan** (Infantry) — defensive specialist, garrisons, secondary slot
5. **Jessie** (Lancer) — S-tier rally joiner, Stand at Arms leveled
6. **Sergey** (Infantry) — defensive rally joiner, Defenders' Edge

The 6th slot flexes based on alliance needs: Patrick for healing, Jasser for offensive joining, or another Mythic if you've developed one.

## Timeline Expectations

These are rough benchmarks for active F2P/minimal-spend players:

| Milestone | Estimated Time |
|---|---|
| Phase 1 complete (Epic foundation) | 2–3 months from game start |
| First Lucky Wheel (Flint) | 4–6 months |
| Flint at 3★ | 8–12 months |
| Molly at 3★ with Mythic gear | 10–14 months |
| Gen 3 entry (Mia available) | ~14–18 months (Day 120 server age) |
| Mia at 4★ | 16–20 months |
| Logan + Greg developed | 20–30 months |

These timelines vary based on spending, event participation, and alliance activity. The point isn't speed — it's doing things in the right order so you never waste resources.

## What's After Gen 3?

**Gen 4 lands around Day 200 of server age** (Ahmose, Reina, Lynn). Reina is currently considered the Gen 4 standout — control, AoE damage, rally strength, valuable across PvP and PvE. The framework repeats:

- Gen 4 Lucky Wheel hero = your next gem-saving target (likely Reina)
- Free gear transfers from Mia → next Gen 4 Lancer if applicable
- Gen 3 heroes move to bench / secondary slots over 6–12 months

Don't worry about Gen 4 until your Gen 3 transition is well underway. Server progression gates this naturally.

## Related Guides

- [Flint](/strategy/heroes/flint) — detailed page on the #1 hero priority through Gen 2
- [Mia](/strategy/heroes/mia) — the Gen 3 Lancer who replaces Molly
- [Logan](/strategy/heroes/logan) — Gen 3 Infantry tank
- [Greg](/strategy/heroes/greg) — Gen 3 Marksman
- [Gear Enhancement](/strategy/gear/hero-gear) — what gear to build and in what order
- [Mythic Transfer](/strategy/gear/mythic-transfer) — how free same-type transfers work
- [Rally Joining](/combat/rally-joining) — which heroes to use as joiners vs. leaders

---

*Last verified: May 2026 · Sources: allclash.com tier list (April 2026), bluestacks.com hero combinations 2026, lootbar.gg hero tier list, whiteoutsurvivalhandbook.com Mia/Greg/Logan guides, heaven-guardian.com Gen 3 heroes guide, whiteoutdata.com Gen 3 heroes*
EOF_HEROES_DEVELOPMENT_ROADMAP

echo "Writing docs/strategy/heroes/mia.md..."
cat > docs/strategy/heroes/mia.md << 'EOF_HEROES_MIA'
---
title: Mia
description: Gen 3 Mythic Lancer — S-tier rally lead with Crystal Lv2 and Expedition skills at Lv5. Replaces Molly.
---

# Mia

::: info Quick take
S-tier Gen 3 Lancer. Mia is the standout Gen 3 hero and the direct upgrade over Molly. Lucky Wheel-gated, so gem-saving discipline matters. The rally-lead threshold is **Fate Crystal Level 2 + Expedition skills at Lv5** — not max star — so she becomes useful long before she's "done."
:::

## At a Glance

- **Class:** Lancer (Mythic)
- **Generation:** Gen 3
- **Acquisition:** Lucky Wheel (primary), Daily Deals + Hall of Heroes after Gen 4
- **Exclusive Gear:** Fate Crystal
- **Tier:** S-tier · Replaces Molly as primary Lancer

## Why Mia

Gen 3 Mythic heroes provide ~+290% troop Attack/Defense in Expedition, a ~50% uplift over Gen 2's ~+240%. Mia is the Lancer realization of that uplift, with a kit that adds hard crowd control, swing-damage potential, and a dedicated healing skill — features no Gen 1/2 Lancer matches.

She's also the **first Mythic in most players' rosters that actively needs careful investment planning** rather than just shard-pumping. Her two skill kits (Exploration and Expedition) use separate skill manuals and don't overlap — under-leveling either side leaves her half-built for her role.

## Skills

### Exploration (Arena, Crazy Joe, PvE)

- **Fate's Finale** — Hurls cards at the target. High damage with chance to stun or reduce target Attack. The most consistent Exploration skill — prioritize first.
- **Bad Omen** — Wide damage range; high upper bound, low lower bound (highly RNG without Crystal Lv2).
- **Guardian of Destiny** — Healing skill. Powerful when it fires, unreliable trigger rate without Crystal Lv2.

### Expedition (Rallies, SvS, Marches)

All three Expedition skills buff Lancer troops in rallies and marches.

- Snow-grace-style buffs to Lancer Attack/Defense
- Damage amplification with proc chance
- Troop Health buff for sustained rally engagements

::: tip Expedition skills only fire in rallies and SvS
Expedition skills do nothing in Bear Hunts, Exploration stages, or any PvE node outside the Expedition system. If you're investing manuals into Expedition skills, you're investing into rally/SvS performance only.
:::

### Crystal Unlock Skills (via Fate Crystal exclusive gear)

- **Vision of Truth** (Crystal Lv1) — Increases upper and lower limits of Mia's "fluctuating" Exploration skills by 150%. This is the skill that turns Bad Omen and Guardian of Destiny from RNG gambles into reliable performance.
- **Rally of Fate** (Crystal Lv2) — +15% Rally Troop Attack. The skill that makes her a rally-lead.

### Skill Leveling Priority

1. **Fate's Finale → Lv4 minimum, Lv5 at 4★** — consistent damage output
2. **Expedition skills → Lv4–5** — rally lead requires these maxed
3. **Crystal Lv2** — unlocks Rally of Fate, the rally-lead skill
4. **Bad Omen / Guardian of Destiny → Lv4+** — only useful after Crystal Lv1 stabilizes their variance

## Gear & Enhancement Priority

**Priority slots:** Goggles + Boots (Lancer = balanced but lean offensive)

- **Goggles + Boots** → Hero Attack + Troop Lethality (Lancer priority)
- **Gloves + Belt** → secondary, fill after primary slots

**Enhancement targets:**
- Priority pieces: Mythic, +52 MF2–3
- Crystal (exclusive gear): Level 2 minimum for rally-lead use

::: tip Inherits Molly's gear for free
All of Molly's Lancer gear (Goggles, Boots, Gloves, Belt) transfers to Mia at zero cost. Same troop type = free transfer. Every gem invested in Molly's gear becomes Mia's investment instantly.
:::

## Best Used For

- **Rally leading** (Lancer marches) — Rally of Fate's +15% Rally Troop Attack
- **Arena** — Fate's Finale + Crystal Lv1 stabilized Bad Omen
- **Crazy Joe** — Exploration kit handles HQ waves
- **SvS Castle Battle** — Expedition skill suite in coordinated Lancer marches

## F2P Stopping Points

| Target | Priority | Notes |
|---|---|---|
| 4★ | High | Gates Lv5 skills |
| Crystal Lv1 | High | Stabilizes Exploration skill variance — quality-of-life |
| **Crystal Lv2** | **Critical** | Unlocks Rally of Fate — rally-lead threshold |
| Goggles/Boots at +52 MF2 | High | Best return before Gen 4 |
| Fate's Finale → Lv5 | High | Core Exploration skill |
| Expedition all Lv5 | High | Rally-lead requirement |
| 5★ | Skip | Same rule as all Mythics — poor F2P ROI |

## Lucky Wheel Plan

Mia is your primary gem-saving target during Gen 3.

- **Budget: ~175,500 gems for 120 spins** (the value ceiling)
- **Target: 4★** — not 5★ (600 shards from 4→5 is poor value)
- **Discount mechanics:** Free Lucky Chips and daily discount events reduce effective spend by 10–30% on most servers — actual spend varies
- **After Gen 4 unlocks:** Lucky Wheel rotates to the next hero (Lynn for Gen 4). Mia's direct shard supply moves to Daily Deals and Hall of Heroes appearances — at a meaningfully worse gem-per-shard rate

::: warning Don't skip the Gen 3 Wheel window
Players who plan to "build Mia later" often find that gem-per-shard cost roughly doubles once she rotates off the Wheel. The Gen 3 window is when Mia is structurally cheapest.
:::

## Pairs Well With

- **Flint** (Infantry) — primary frontline partner; Lancer + Infantry is core rally composition
- **Greg or Alonzo** (Marksman) — Lancer + Marksman backline finish
- **Jessie** (Lancer joiner) — Stand at Arms +25% all damage in rally slot 1

## Common Questions

**Should I keep investing in Molly while saving for Mia?**
Yes — but cap Molly gear at +45 MF2. Every gem on Molly transfers to Mia, so it's not wasted; just don't push past the diminishing-returns threshold.

**Is Mia a Snow's Grace replacement?**
Functionally yes for rally-lead role, but her kit is different. Mia gets Rally of Fate (+15% Rally Troop Attack from Crystal Lv2) while Molly had Snow's Grace as her core troop buff. Both buff Lancer troops in rallies; Mia's ceiling is higher.

**What about Philly?**
Philly is a Gen 2 Mythic Lancer, **benched** with no further development. Mia replaces Molly directly. Philly ≠ Mia — different generation, different role. If you have Philly shards lying around, they're bench depth, not investment priority.

**Can I run Mia as rally-lead at 3★?**
Yes if Crystal Lv2 is done and Expedition skills are at Lv5. The "wait for max build" approach leaves months of value on the table. 4★ is the recommended target, but 3★ with Crystal Lv2 + Expedition Lv5 already outperforms a 4★ Molly with comparable gear.

## Related Guides

- [Molly](/strategy/heroes/molly) — the hero Mia replaces (gear donor)
- [Development Roadmap](/strategy/heroes/development-roadmap) — where Mia fits in the Gen 3 transition
- [Mythic Transfer](/strategy/gear/mythic-transfer) — how Molly's gear transfers
- [Rally Joining](/combat/rally-joining) — Mia is a leader, not a joiner

---

*Last verified: May 2026 · Sources: whiteoutsurvivalhandbook.com Mia 2026 guide, allclash.com Mia tier, heaven-guardian.com Mia guide, theriagames.com Mia guide, whiteoutsurvival.app heroes/s3/mia*
EOF_HEROES_MIA

echo "Writing docs/strategy/heroes/greg.md..."
cat > docs/strategy/heroes/greg.md << 'EOF_HEROES_GREG'
---
title: Greg
description: Gen 3 Mythic Marksman — debuff specialist with class-leading rally Attack and the Courtroom Order silence.
---

# Greg

::: info Quick take
A-tier Gen 3 Marksman. Greg turns Marksman rallies into punishment engines — class-leading +280%+ Attack buff, a turn-based damage amplifier, and a 5-second silence that shuts down enemy hero skills. Not strictly an upgrade over a developed Alonzo — they're different Marksmen. Pick based on whether your rallies lean Marksman-heavy (Greg) or mixed-troop (Alonzo).
:::

## At a Glance

- **Class:** Marksman (Mythic)
- **Generation:** Gen 3
- **Acquisition:** Diffuse — Hero Rally, Daily Deals, King of Icefield, SvS events
- **Tier:** A-tier overall · Strong rally lead with developed kit

## Why Greg

Greg provides **+290% Attack and Defense to Marksman troops** at maximum investment — the Gen 3 Marksman template. That's a ~50% uplift over the Gen 2 class template (Alonzo, Gina). For Marksman-heavy rallies, Greg is the single largest lever you have on Marksman output until Gen 4 arrives.

His distinctiveness comes from the debuff/control angle:

- **Fair Judgment** — increases damage taken by enemies by up to **+30% for 3 seconds**, stacking with rally damage
- **Courtroom Order** — silences enemies for **5 seconds**, dealing Attack × 300% damage. Shuts down enemy skill rotations the moment the gate opens.

This is a different toolkit than Alonzo's all-troop Expedition buffs. Greg punishes specific marches; Alonzo lifts everyone.

## Acquisition Reality

Greg has the most diffuse acquisition pattern of the Gen 3 heroes. He's not Lucky Wheel-gated like Mia or Hall-of-Heroes-locked like Logan. He's available through:

- **Hero Rally** events (rotating featured hero)
- **Daily Deals** (when featured)
- **King of Icefield** event rewards
- **SvS** event rewards
- **Hall of Heroes** at later generations
- **Hero's Mission** at later generations

**Practical implication for F2P:** Greg accumulates passively as you play KoI, SvS, and complete event milestones. He doesn't need a dedicated gem fund the way Mia does. The flip side: he develops slower because no single source is dense.

## Skills

### Exploration (Arena, Crazy Joe, PvE)

- **Righteous Wind** — Summons a cage from the sky, dealing Attack × 224% damage to enemies in range and stunning them for 2s. AoE + stun = the strongest Exploration skill, push first.
- **Poetic Justice** — Puts an enemy on trial: either deals Attack × 300% damage OR restores Attack × 50% health to the target. Tactical flexibility, but the conditional output makes it secondary.
- **Fair Judgment** — Enemy damage taken +30% for 3s. Synergizes with Righteous Wind (stun first, then amplify damage).

### Expedition (Rallies, SvS, Marches)

- **Sword of Justice** — 20% chance to increase damage dealt by all troops by up to 40% for 3 turns. Strong rally lead skill.
- **Deterrence of Law** — 20% chance for all troops' attacks to reduce enemy damage dealt by up to 50% for 2 turns. Defensive debuff.
- **Law and Order** — +25% Health for all troops. Passive flat buff — reliable.

### Crystal Unlock Skills (Greg's exclusive gear)

- **Courtroom Order** — Silences enemies for 5 seconds (skills already cast are not affected), dealing Attack × 300% damage. The signature skill — counters enemy hero skill rotations.
- **Crystal Lv2 skill** — +15% Health for rallied troops. Stacks with Law and Order.

### Skill Leveling Priority

1. **Righteous Wind → Lv4 minimum, Lv5 at 4★** — AoE stun is the foundation
2. **Fair Judgment → Lv4+** — damage amplification synergy
3. **Sword of Justice → Lv4+** — rally lead skill
4. **Law and Order → Lv4+** — flat troop health buff
5. **Poetic Justice → Lv4** — last priority due to RNG output

## Gear & Enhancement Priority

**Priority slots:** Goggles + Boots (Marksman = pure damage = Lethality priority)

- **Goggles + Boots** → Hero Attack + Troop Lethality
- **Gloves + Belt** → secondary, fill after primary
- **Exclusive Gear (Greg's widget):** Lv2 minimum for the rally health buff

**Enhancement targets:**
- Priority pieces: Mythic, +52 MF2–3
- Bahiti's Mythic Marksman gear transfers to Greg for free (same troop type) — Greg, Alonzo, and Bahiti share a gear pool

::: tip The Gen 3 Marksman question
If you've already invested heavily in Alonzo, **don't switch to Greg as primary**. Use Greg as a secondary or specialized rally lead (Marksman-heavy compositions, anti-skill-rotation situations). Both heroes use Marksman gear, so transferring between them is free and reversible.
:::

## Best Used For

- **Marksman-heavy rallies** — Greg's class-specific buffs hit hardest here
- **Foundry Battle / SvS** — Sword of Justice + Fair Judgment amplify rally damage
- **Arena push** — Righteous Wind + Fair Judgment combo
- **Crazy Joe** — Exploration kit handles waves cleanly with Courtroom Order on HQ bosses

## Best Used Against

- Enemy compositions reliant on hero skills — Courtroom Order's silence breaks their rotation
- Bear Trap (joiner) — Greg's first Expedition skill (Sword of Justice) is conditional (20% chance), making him a poor joiner

## Best Avoided For

- **Rally joining** — proc-chance first skill (Sword of Justice 20% trigger) wastes a top-4 joiner slot. Use Jessie, Jasser, or Jeronimo as joiners instead.
- **PvE bear hunts** — Expedition skills don't fire outside the world-map Expedition system

## F2P Stopping Points

| Target | Priority | Notes |
|---|---|---|
| 3★ | Gate | Minimum before activating |
| 4★ | High | Gates Lv5 skills |
| Righteous Wind → Lv4 | High | Core Exploration skill |
| Sword of Justice → Lv4 | High | Rally lead skill |
| Crystal Lv1 (Courtroom Order) | High | Signature skill unlock |
| Goggles/Boots at +52 MF2 | High | Inherit from Bahiti or Alonzo |
| Crystal Lv2 | Moderate | Adds +15% rally Health |
| 5★ | Skip | Standard F2P rule |

## Pairs Well With

- **Mia (Lancer)** — Gen 3 frontline + backline combination
- **Flint (Infantry)** — frontline tank for Greg's backline
- **Logan (Infantry)** — defensive frontline if Flint is busy elsewhere

## Pairs Poorly With

- **Bahiti / Alonzo (Marksman)** in the same march — duplicate troop type wastes class buff potential. Pick one Marksman per march composition.

## Greg vs. Alonzo Decision Tree

This is the most asked Gen 3 Marksman question. Quick framework:

| Situation | Pick |
|---|---|
| Alonzo at 3★+ with Mythic gear, mixed-troop rallies | **Alonzo** — all-troop Expedition buffs are universal |
| Alonzo barely developed, accounts new to Gen 3 | **Greg** — accumulates passively, lower investment barrier |
| Marksman-heavy rally compositions | **Greg** — class-specific buffs hit harder |
| Anti-skill-rotation needed (silence specific enemy) | **Greg** — Courtroom Order is unique |
| Rally lead for SvS top scoring | Either — both work; pick based on alliance composition |
| Limited gem budget | **Greg** — no Lucky Wheel pull required |

For F2P: complete Alonzo first if he's started, then add Greg through passive accumulation.

## Common Mistakes

1. **Using Greg as a rally joiner.** Sword of Justice's 20% trigger wastes the joiner slot. Use S-tier joiners (Jessie, Jasser, Jeronimo) instead.
2. **Pulling for Greg at the cost of Mia's Lucky Wheel.** Greg accumulates passively. Mia is gem-fund priority.
3. **Doubling up Marksmen in one march.** Pick one — same-class duplication wastes troop buffs.
4. **Skipping Crystal Lv1.** Courtroom Order is Greg's signature. Without it, he's just a generic Marksman.

## Related Guides

- [Alonzo](/strategy/heroes/alonzo) — the Gen 2 Marksman Greg may or may not replace
- [Bahiti](/strategy/heroes/bahiti) — gear donor (Marksman → Marksman free transfer)
- [Mia](/strategy/heroes/mia) — Gen 3 Lancer pairing
- [Development Roadmap](/strategy/heroes/development-roadmap) — Phase 5 Gen 3 transition

---

*Last verified: May 2026 · Sources: whiteoutsurvivalhandbook.com Greg 2026 guide, pillarofgaming.com Greg guide, theriagames.com Greg guide, heaven-guardian.com Greg guide, whiteoutsurvival.app heroes/s3/greg*
EOF_HEROES_GREG

echo "Writing docs/strategy/heroes/logan.md..."
cat > docs/strategy/heroes/logan.md << 'EOF_HEROES_LOGAN'
---
title: Logan
description: Gen 3 Mythic Infantry tank — strongest defensive hero in Gen 3, ideal for garrisons and frontline holds.
---

# Logan

::: info Quick take
A+ tier Gen 3 Infantry. Logan is the strongest tank available to Gen 3 servers — +25% troop Health and +20% damage reduction at max make him almost unkillable in the front line. He's not strictly a Flint replacement — Flint still has superior offense for rally leading. **Use Logan where Flint isn't ideal**: defensive garrisons, Sunfire Castle holds, Foundry Battle defense, sustained tank exchanges.
:::

## At a Glance

- **Class:** Infantry (Mythic)
- **Generation:** Gen 3
- **Acquisition:** Hall of Heroes (primary), Foundry Shop, Daily Deals after Gen 4
- **Exclusive Gear:** Fists of Steel
- **Tier:** A+ for defensive roles · Secondary to Flint for offensive rally leading

## Why Logan

Logan provides **permanent damage reduction (20%)** as a passive Expedition skill — unlike Flint's chance-based defensive procs. For positions where you absolutely cannot lose troops (garrisons, key SvS holds, Sunfire turrets), Logan's reliability beats Flint's higher offensive ceiling.

His signature feature is the **stacking defense buff**: when attacked, his Power Suit has up to 16% chance to boost Defense by 20% for 2s, stackable to 5x. In sustained engagements, Logan effectively becomes more durable as the fight continues — exactly what you want from a tank.

## Skills

### Exploration (Arena, Crazy Joe, PvE)

- **Fists of Destruction** — Smashes Fists of Steel on the ground, dealing Attack × 168% damage and reducing target Attack Speed by 50% for 4s. AoE damage + speed debuff = strong opener.
- **Power Suit** — 16% chance to boost Defense by 20% when attacked for 2s, stackable to 5 times. Passive sustain.
- **Blustery Strike** — Cone-shaped AoE: Attack × 112% damage with 30% chance to stun for 1s. Crowd control + damage.

### Expedition (Rallies, SvS, Marches)

- **Lion Strike** — Reduces all enemies' troops' Attack by 20%.
- **Lion Intimidation** — Reduces damage taken by 20% for all troops. **Permanent flat damage reduction** — no proc chance.
- **Leader Inspiration** — Increases Health by 25% for all troops.

### Crystal Unlock Skills (via Fists of Steel exclusive gear)

- **Enhanced Fists of Steel** (Lv1) — Modifies Fists of Destruction to deal 30% more damage.
- **Strong Protection** (Lv2) — Increases Defender Troop Defense by 15% when Logan is garrisoning.

### Skill Leveling Priority

1. **Lion Intimidation → Lv4 minimum, Lv5 at 4★** — 20% flat damage reduction is the money skill
2. **Lion Strike → Lv4** — enemy Attack debuff
3. **Leader Inspiration → Lv4** — flat troop Health
4. **Fists of Destruction → Lv4** — primary Exploration damage
5. **Power Suit → Lv4** — Arena sustain
6. **Blustery Strike → Lv4** — Arena crowd control

The Expedition skills are all flat or unconditional buffs (no RNG procs), making Logan's Expedition kit one of the most reliable in the game. Push them to Lv5 once 4★ is unlocked.

## Gear & Enhancement Priority

**Priority slots:** Gloves + Belt (Infantry = tanking = Health priority)

- **Gloves + Belt** → Hero Health + Troop Defense
- **Goggles + Boots** → secondary, fill after primary
- **Exclusive Gear (Fists of Steel):** Lv1 for Enhanced Fists, Lv2 for Strong Protection garrison bonus

::: tip Free gear transfer from Flint or Sergey
Logan inherits Mythic Infantry gear from either Flint or Sergey at zero cost (same troop type). Since you likely have Flint's Mythic Gloves/Belt heavily developed, the question becomes: **transfer Flint's gear to Logan, or build Logan a separate set?**

**Recommended:** keep two Mythic Infantry sets — one for Flint (rally lead), one for Logan (garrison/defense). Sergey's older Mythic gear can flow to Logan first. Don't strip Flint to feed Logan; it bottlenecks your rally output.
:::

## Best Used For

- **Garrisoning** — Sunfire Castle, Foundry Imperial Foundry, SvS positions. Strong Protection skill from Crystal Lv2 adds +15% Defender Troop Defense.
- **Sustained tank exchanges** — Power Suit's stacking Defense scales with engagement length
- **Frontline PvP defense** — Lion Intimidation's flat 20% damage reduction
- **Bear Trap garrison** — defensive contribution, not offensive rally lead

## Best Avoided For

- **Offensive rally leading** — Flint's Burning Resolve + Immolation offensive kit beats Logan's tankier-but-slower output
- **Rally joining** — Logan's first Expedition skill (Lion Strike) is a flat debuff to all enemies, but flat enemy debuffs are worse than offensive joiners that boost rally damage. Use Jessie, Jasser, or Jeronimo as joiners.
- **Marksman-heavy PvE pushes** — his class buffs don't help your damage dealers; bring Flint instead.

## F2P Stopping Points

| Target | Priority | Notes |
|---|---|---|
| 3★ | Gate | Minimum before activating |
| 4★ | High | Gates Lv5 skills |
| Lion Intimidation → Lv4 | High | Money skill — 20% flat damage reduction |
| All Expedition skills Lv4 | High | Logan's Expedition kit is uniformly good (no RNG procs) |
| Crystal Lv1 (Enhanced Fists) | Moderate | Arena/exploration only |
| Crystal Lv2 (Strong Protection) | High if garrisoning | +15% Defender Troop Defense |
| Mythic Gloves/Belt at +52 MF2 | High | Inherit from Sergey or build new |
| 5★ | Skip | Standard F2P rule |

## Pairs Well With

- **Flint (Infantry)** — share the Infantry slot. Flint leads rallies, Logan garrisons. Both maxed = double-Infantry strength.
- **Mia (Lancer)** — Logan tanks while Mia carries Lancer rally damage.
- **Greg (Marksman)** — Logan tanks while Greg's Marksman backline punishes.

## Pairs Poorly With

- **Sergey (Infantry)** in the same march — duplicate troop type, but Logan + Sergey on garrison together is fine. Just don't double-up in rally compositions.

## Logan vs. Flint Decision Tree

Like the Alonzo/Greg question for Marksmen, this is the central Gen 3 Infantry decision:

| Situation | Pick |
|---|---|
| Offensive rally lead (any event) | **Flint** — Burning Resolve + Immolation hit harder |
| Sunfire Castle garrison | **Logan** — Strong Protection + flat 20% damage reduction |
| Foundry Imperial Foundry hold | **Logan** — stacking Power Suit + Lion Intimidation |
| Frontline tank in PvP exchange | **Logan** — flat damage reduction is reliable |
| Bear Trap rally lead | **Flint** — offensive ceiling matters |
| Bear Trap garrison contribution | Either — depends on what's free |
| Pure SvS Battle Phase rally | **Flint** — Immolation's flat +25% Lethality is decisive |
| Defensive SvS hold (your alliance is overpowered) | **Logan** — tank longer, lose fewer troops |

The clean rule: **Flint leads attacks, Logan holds positions.**

## Logan in Bear Trap

Logan adds defense reliability but not offensive damage. If your alliance uses Logan as a Bear Trap rally lead, expect:
- **Lower damage per troop** than a Flint-led rally
- **Better troop survival** post-rally (which doesn't matter — Bear Trap troops heal anyway)
- **No proc-chance Expedition skill 1**, so he's not catastrophic as a joiner either

Practical verdict: **don't use Logan for Bear Trap rally leading.** Use him to hold the trap garrison or carry alliance buff capacity.

## Common Mistakes

1. **Using Logan instead of Flint for offensive rallies.** Reliability isn't damage. Flint outpaces Logan in pure rally output.
2. **Stripping Flint's gear to build Logan faster.** You bottleneck your offensive rally lead. Build Logan from Sergey's hand-me-downs or a fresh set.
3. **Skipping Crystal Lv2 if you garrison Sunfire/Foundry.** Strong Protection's +15% Defender Defense is exactly why Logan exists in your roster.
4. **Doubling up Infantry in one march.** Logan + Sergey in the same rally wastes troop buffs. Two Infantry heroes belong in separate marches.

## Related Guides

- [Flint](/strategy/heroes/flint) — the offensive Infantry counterpart
- [Mia](/strategy/heroes/mia) — Gen 3 Lancer pairing
- [Greg](/strategy/heroes/greg) — Gen 3 Marksman backline
- [Sunfire Castle](/events/sunfire-castle) — where Logan's garrison value pays off
- [Development Roadmap](/strategy/heroes/development-roadmap) — where Logan fits in Phase 5

---

*Last verified: May 2026 · Sources: whiteoutsurvival.wiki/heroes/logan, whiteoutsurvival.app heroes/s3/logan, pillarofgaming.com Logan guide, theriagames.com Logan guide, heaven-guardian.com Logan guide, allclash.com tier list (April 2026)*
EOF_HEROES_LOGAN


echo ""
echo "✅ Complete — 9 files written"
echo ""
echo "Files created or updated:"
echo "  Dawn Academy (4 new):"
find docs/strategy/dawn-academy -name "*.md" | sort
echo ""
echo "  Heroes (5 created/updated):"
ls docs/strategy/heroes/index.md docs/strategy/heroes/development-roadmap.md docs/strategy/heroes/mia.md docs/strategy/heroes/greg.md docs/strategy/heroes/logan.md 2>/dev/null
echo ""
echo "Next: see CLAUDE_CODE_HANDOFF_dawn_academy_and_gen3.md for config.ts, strategy/index.md, glossary, changelog, and MANIFEST.md updates."
