---
title: Scout Reports
description: How to read a scout report, what it shows you, what it hides, and how to use it before you commit a rally.
---

# Scout Reports

::: info Quick take
A scout report is intelligence you gather *before* you attack. It tells you what's home, what's marching, and what defensive shape the target is in. It does **not** show their gem buffs, pet skills, or hero loadouts — those become visible only in the battle report after combat. The skill is reading what's there and inferring what isn't.
:::

## What a Scout Sends You

When you send a scout from the Battle Camp, the returning report contains:

- **Troop count and composition** in the target city, broken down by type and tier
- **Hospital status** — how many wounded are currently in treatment, and capacity remaining
- **Resource stockpiles** — Wood, Meat, Coal, Iron (used for raiding decisions)
- **Active marches** — outgoing marches the target has dispatched (gathering, attacking, returning)
- **Garrison reinforcements** — list of alliance members reinforcing the city, with troop counts
- **Power level** of the chief and a rough indication of their overall account strength

What it does **not** show:

- Active gem buffs (Lethality Up, Damage Reduction, etc.)
- Active pet skill buffs (Cave Lion, Frost Gorilla, etc.)
- Which hero is set as the "front" hero
- Whether alliance facility buffs are active
- Hero gear quality, widget levels, or exclusive gear progression
- Research status

The hidden information is what makes scouting a *probabilistic* tool, not a definitive one. You're building a model of the target, not reading their full character sheet.

## The Three Questions a Scout Answers

When the report comes in, you're trying to answer three things:

### 1. Are they vulnerable right now?

The clearest vulnerability signal is **active marches outgoing**. If the target has 3 of their 5 march slots out on gathering trips or a Beast Hunt, the troops in those marches aren't home to defend. Subtract them from the visible city troop count — that's their real defensive number.

The same applies to **reinforcements they've sent to others**. A scout shows troops physically present in the city; if they've sent reinforcements elsewhere, those are deducted from their available defense.

Other vulnerability signals:
- **Hospital at or near capacity** — if their hospital is full, any troops killed in the next attack become permanent losses instead of healing. This makes them softer than the raw troop count suggests, and makes them more reluctant to take an attack.
- **No alliance reinforcements** — if their garrison list is empty, they're holding solo. The Bonus Source defaults to their own loadout, which you can probably assess from their power level.
- **Low resources** — if they're sitting on minimal stockpiles, they may be unshielded by negligence rather than choice, and a follow-up rally can flip the city.

### 2. What does their troop composition tell me?

The composition you see tells you their *current* readiness, not their *optimized* setup.

- **Heavy Infantry, low Marksman** — they're set up to defend (Infantry tanks first). Lancer-heavy rallies counter this.
- **Heavy Marksman, low Lancer** — they're set up to attack/gather, not defend. Lancer rallies devastate them.
- **Even split (33/33/33 default)** — they haven't manually customized their formation. Almost certainly an inexperienced player. Standard 50/20/30 rally crushes them.
- **All one type** — they're prepping for a specific event (Crazy Joe at 90/10/0, or a single-type rally lead) and may not be guarding their city seriously.

A scout taken at the moment of attack reflects what's actually in the city. But experienced defenders **swap troops** in the seconds before a rally lands — pulling injured troops out of the hospital, shifting ratios, swapping the front hero. Your scout is a snapshot, not a forecast.

### 3. How big is the garrison really?

Add up:
- City troops (visible)
- Reinforcing troops (visible, with each reinforcement's count)

But understand the **Bonus Source** concept (covered in detail on the [Battle Reports](/combat/battle-reports) page): the *stats* applied to the entire garrison come from the single garrison member with the highest combat power, not the leader. So if a weak-looking city has one whale reinforcing it, the entire garrison fights at that whale's stats. The scout shows you the bodies; it doesn't show you whose loadout drives the math.

The practical lesson: when a scout shows a city with a long reinforcement list including names you recognize from the enemy's top 5, treat the garrison stats as belonging to the *strongest* reinforcer, not the city owner.

## Hospital Capacity — The Underused Signal

Many players ignore the hospital line in a scout report. It's one of the strongest signals available.

**A full or nearly-full hospital means:**
- The defender recently took a hit (or several) and hasn't healed up
- New casualties from your attack become **permanent losses** instead of routed to the hospital — once hospital is full, additional injured troops die outright
- The defender is psychologically more reluctant to take another hit, because heal costs are mounting

**An empty hospital can mean:**
- The defender is fully healed and ready
- OR — they have no healing speedups left and are conserving capacity (less likely)

In a coordinated alliance push on the same target, scouting between rallies tells you whether the hospital is filling. Three rallies on a target whose hospital starts empty and fills with each rally means the fourth rally is dealing permanent damage. This is the math behind alliance "wave" strategies.

## Reading Solo vs. Garrison Targets

**Solo target (no reinforcements):**
- The chief's own power level, gear, and heroes are your reference point
- Cross-reference their power with the [hero tier list](/strategy/heroes/) — at their power, what heroes are they likely fielding? What widget level?
- A high-power solo target with no garrison is often someone who logged off mid-event; they may not be home to react

**Garrison target (with reinforcements):**
- Total troops = much higher than solo
- Stats applied = the strongest member's loadout (Bonus Source)
- Multiple alliance reinforcements likely means coordinated defense and active reaction time

## The Scout Report Lifecycle

Scouts have a small window of usefulness:

1. **Scout sent** — counter starts
2. **Scout returns with report** — typically a few minutes after being sent
3. **Report valid window** — roughly the next 5–15 minutes, depending on how active the defender is
4. **Report stale** — defender has had time to shift troops, heal, swap heroes, or activate buffs

If you scout 30 minutes before you attack and the defender went online in that window, your scout is worthless. Re-scout immediately before rallying for high-value targets.

## Counter-Scouting (Scouts Sent at You)

When you receive a scout from an enemy, it's a strong signal you're about to be attacked.

**Immediate actions when you receive an enemy scout:**

1. **Activate defensive buffs** — Mammoth pet skill (+10% troop defense), Frost Gorilla (+10% troop health), defensive gem buffs
2. **Swap to your defensive hero loadout** — Sergey lead, defensive captain trio (see [Garrison Captain](/combat/garrison-captain))
3. **Set defensive troop ratio** — 60/40/0 or 70/30/0 depending on threat
4. **Heal injured troops** if hospital has space
5. **Recall outgoing marches** if you have them out

Scout reports work both ways. The enemy scouting you is gathering the same intel you'd gather on them — and your behavior in the next 5 minutes determines whether you look soft or hard when they decide whether to rally.

## Common Mistakes

1. **Treating the scout as the truth at attack time.** Targets shift troops in seconds. Re-scout immediately before rallying high-value targets.
2. **Ignoring active marches.** A 200K-troop city with 3 marches out is really a 100K-troop city. Subtract before judging.
3. **Not noting the reinforcement list.** A weak city with a whale reinforcing fights at whale stats. Read the names.
4. **Hospital is full = win condition ignored.** This is the signal that your next attack causes permanent losses. Don't waste it.
5. **Scouting too early.** A scout from 30 minutes ago is informational, not actionable.
6. **Single-scouting a coordinated alliance.** If their alliance is online, they will reinforce in seconds after your scout. Repeat the scout immediately before the rally lands.

## Related Guides

- [Battle Reports](/combat/battle-reports) — what you see *after* combat, including the Bonus Source mechanic
- [Reading Battle Reports](/combat/reading-reports) — how to use post-battle data to adjust your next attack
- [Garrison Captain](/combat/garrison-captain) — defensive hero selection when you're the one being scouted
- [Pre-Battle Checklist](/combat/pre-battle-checklist) — full preparation routine

---

*Last verified: May 2026 · Sources: Whiteout Survival Combat FAQ (Helpshift), WOS Global Twitter on Bonus Source mechanics, whiteoutsurvival.wiki on combat stats, community consensus on scout timing*
