---
title: Components Demo
description: Internal reference page exercising every custom Vue component. Hidden from the sidebar.
---

# Components Demo

Internal reference. Each component below is shown with realistic usage. Hidden from the sidebar; reachable only by URL.

## Callout

<Callout type="info" title="Info">

This is the **info** variant. Use it for "quick take" boxes at the top of guides. Markdown formatting works inside the slot when surrounded by blank lines.

</Callout>

<Callout type="tip" title="Tip">

The **tip** variant is for actionable advice — "do this", "save this for later". Green tone keeps it visually distinct from info.

</Callout>

<Callout type="warn" title="Warning">

Use **warn** for things that aren't dangerous but easy to get wrong — timing windows, common confusion points.

</Callout>

<Callout type="danger" title="Danger">

**Danger** is reserved for shielding rules, irreversible mistakes, anything that can lose troops or zero out a player.

</Callout>

## PointsTable

<PointsTable
  title="SvS scoring highlights"
  :rows="[
    { item: 'Mithril', day: 'Day 4', points: 144000, note: 'Biggest single-item lever' },
    { item: 'Polar Terror rally start', day: 'Day 3', points: 30000, note: 'Joiners get 0' },
    { item: 'Refined Fire Crystal', day: 'Day 1 / 5', points: 30000 },
    { item: 'Mythic Hero Shard', day: 'Day 2', points: 3040 },
    { item: 'Fire Crystal', day: 'Day 1', points: 2000 },
    { item: 'T11 troop', day: 'Day 4', points: 75 }
  ]"
/>

## TroopRatio

<TroopRatio :infantry="50" :lancer="20" :marksman="30" label="Castle Attack — Lead / Join" />

<TroopRatio :infantry="60" :lancer="40" :marksman="0" label="Castle Garrison" />

<TroopRatio :infantry="0" :lancer="10" :marksman="90" label="Polar Terror — Lead (Gen 8+)" />

## DayChecklist

<DayChecklist
  title="Day 4 — Hero Development"
  :items="[
    'Use Mithril (144,000 pts each)',
    'Promote troops first, then train fresh',
    'T11 = 75 pts, T10 = 60 pts',
    'Pre-trained batch from Day 2/3 finishes here',
    'Burn Training Speedups',
    'Chief Charm continues to score'
  ]"
/>

State is in-session only — refresh resets every box.

## TimelineRow

<TimelineRow phase="Prep" day="Day 4 — Thu" title="Hero Development" tone="brand">

Mithril Day. 144,000 pts each. Promote troops first, train fresh second, pre-trained batch from earlier days lands here.

</TimelineRow>

<TimelineRow phase="Battle" day="Sat 12:00 UTC" title="Castle Battle Begins" tone="warn">

5-hour battle, 2.5-hour win condition. Hold the castle for 2.5 consecutive hours OR accumulate the most total hold time.

</TimelineRow>

<TimelineRow phase="Lockdown" day="Sat 09:45 UTC" title="Shield Up" tone="danger">

If you're not actively fighting, **shield up before 10:00 UTC**. Portal stays open until 22:00 — that's 12 hours of unshielded vulnerability.

</TimelineRow>

## TierBadge

Inline rank pills:

- <TierBadge tier="S" label="Mythic only" /> — top tier, defines the meta
- <TierBadge tier="A" /> — strong, viable in any composition
- <TierBadge tier="B" /> — situational pick
- <TierBadge tier="C" /> — niche / fallback
- <TierBadge tier="D" /> — better options exist
- <TierBadge tier="F" label="skip" /> — actively bad

## Frequency

Cadence badges for the events index:

- <Frequency cadence="Daily" />
- <Frequency cadence="Weekly" />
- <Frequency cadence="Biweekly" />
- <Frequency cadence="Monthly" />
- <Frequency cadence="Yearly" />
- <Frequency cadence="Seasonal" />
- <Frequency cadence="One-Time" />

## HeroCard

<HeroCard name="Jeronimo" troop-class="Infantry" tier="S" role="Rally Leader">

Top-tier infantry rally leader. Strong damage reduction skills make him the cornerstone of castle attacks and SvS rallies.

</HeroCard>

<HeroCard name="Patrick" troop-class="Lancer" tier="A" role="Mid-Rally">

Reliable lancer pick. Good support skills, doesn't require Mythic shards to be useful.

</HeroCard>

<HeroCard name="Molly" troop-class="Marksman" tier="S" role="PvE Boss">

Premier marksman for Bear Trap and Polar Terror. AOE-focused skills with high lethality scaling.

</HeroCard>

---

*Internal demo page. Edit `docs/reference/components-demo.md` to add new examples.*
