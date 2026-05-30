---
title: Reading Battle Reports
description: How to use post-battle data to adjust troop ratio, hero choice, and buffs for the next attack. The analytical skill that separates experienced players.
---

# Reading Battle Reports

::: info Quick take
Reading a battle report is a learnable skill, not a talent. You're looking for three things: (1) what killed me, (2) what survived, (3) why. The answers tell you whether to retry with the same setup, retry with adjustments, or stop attacking entirely. Most losses fall into a few recognizable patterns — once you know them, "decoding" enemy setups is mechanical.
:::

## The Reading Framework

A battle report gives you data; you turn it into a decision. The decision is one of three:

1. **Repeat the attack** — same setup, just need more bodies or more attacks to grind them down
2. **Adjust and retry** — change ratio, hero, or buffs to counter what you saw
3. **Abandon** — they're too strong, you're losing troops for no gain, move to a different target

The framework for getting there:

```
Step 1: What did I lose? (casualty section)
Step 2: What did they lose? (their casualty section)
Step 3: What were the relative stats? (stats comparison with arrows)
Step 4: What active buffs did each side have? (buffs section)
Step 5: What heroes/widgets did they actually run? (hero lineup + stat percentages)
→ Decision: repeat, adjust, or abandon
```

This whole process takes 30 seconds once you've practiced it. The first few reports take longer — that's normal.

## Pattern 1 — Infantry Line Collapsed

**What the report shows:**
- Your Infantry casualty count is near 100%
- Your Lancers and Marksmen also took heavy losses
- Their Infantry survived in significant numbers
- Stat arrows: their Infantry Health ↑↑↑ vs. your Attack/Lethality

**What happened:**
Your Infantry was supposed to absorb damage long enough for your backline to do work. They failed. Either you didn't have enough Infantry (ratio problem), their Infantry was tankier than yours (stat problem), or both.

**Adjustments:**
- **First retry:** increase Infantry ratio — go from 50/20/30 to 60/20/20 or 70/20/10
- **If still losing with more Infantry:** their Infantry Defense or Health is significantly higher than yours. They likely have Logan, a defensive widget loaded, or stacked defensive pet/gem buffs. Either out-stat them with your own pet/gem buffs or switch targets.
- **If the enemy has Marksmen alongside Infantry:** Lancers counter Marksmen. Try 50/30/20 (more Lancers) — your Lancers chew their Marksmen while your Infantry tanks.

## Pattern 2 — Marksmen Survived but Did Nothing

**What the report shows:**
- Your Infantry died, your Lancers died
- Your Marksmen survived but the kill numbers are low
- The battle ended with their troops still up

**What happened:**
Your front line died fast and your Marksmen never got to fully fire — or fired but couldn't break the Defense wall. This usually means too few front-line bodies for the duration of the fight, or the fight ended via troop attrition before Marksmen could finish the job.

**Adjustments:**
- **First retry:** more Infantry to extend the fight. 60/20/20 or higher.
- **Second retry consideration:** if their Defense was extreme (look at stat arrows), even more Infantry only delays the inevitable. Re-attack only if you can also pop a Lethality buff or swap to a higher-Lethality hero.

## Pattern 3 — Won the Stat Comparison, Lost the Fight

**What the report shows:**
- Stat arrows are mostly green ↑ for you
- But casualties are heavy and the outcome is a loss or pyrrhic victory

**What happened:**
This is the most counterintuitive outcome. You "won" on paper but the troop count gap or composition mismatch was bigger than the stat advantage could overcome. Common causes:

- **Troop count disadvantage** — they had more troops, even with worse stats per troop, total damage output beat you
- **Wrong composition** — your high Attack on Lancers smashed into their Lancers (Lancer vs. Lancer is even), while their Marksmen worked on your Infantry (Marksman beats Infantry)
- **Bonus Source confusion** — you assumed you were fighting the city owner's weaker stats, but a reinforced whale was the actual Bonus Source

**Adjustments:**
- **Re-scout the target.** A second scout often reveals a reinforcement you missed.
- **Check the Bonus Source in the battle report.** If a name you didn't expect is driving their stats, your scout-based assumption was wrong.
- **Don't retry with the same setup.** "Better stats" is not a guaranteed win condition.

## Pattern 4 — They Won by a Lot, but Your Stats Were Close

**What the report shows:**
- Stat arrows roughly even or slightly red
- But casualties are catastrophic on your side, minor on theirs

**What happened:**
This is almost always a **buffs issue**. They had pet skills, gem buffs, or alliance facility buffs active that you didn't see in the scout. The buffs section of the battle report will confirm — check what's listed under their side.

**Adjustments:**
- Pop your own equivalents. Mammoth + Frost Gorilla + Lethality Up + Damage Reduction
- If they had multiple alliance facility buffs active and your alliance doesn't hold facilities, abandon — that gap won't close in a single fight
- Time your next attack for when their buffs expire (pet buffs last 2 hours, gem buffs vary)

## Pattern 5 — One Unfamiliar Stat Is Extreme

**What the report shows:**
- One specific stat (e.g., Marksman Attack at 700%+, or Infantry Health 800%+) is dramatically higher than expected for their generation
- Other stats are normal

**What happened:**
They have a widget (exclusive gear from a specific hero) that you didn't know about. See the [Battle Reports](/combat/battle-reports#reading-widgets-from-stat-percentages) widget table for which stat patterns map to which widgets.

**Adjustments:**
- **Marksman Attack high → Lancer counter** (Lancers beat Marksmen)
- **Infantry Defense high → Marksman counter** (Marksmen beat Infantry)
- **Lancer Lethality high → Infantry counter** (Infantry beats Lancers)
- Plan your next rally composition around what you now know they're running

## Pattern 6 — Mutual Annihilation

**What the report shows:**
- Both sides lost the vast majority of their troops
- Outcome is technically a win for one side but losses are 70%+ for both

**What happened:**
The match was close enough that neither side had room for error. The first move on the next attack matters disproportionately — buffs, troop count, composition swap will determine the rematch.

**Adjustments:**
- **The advantage is to whoever's hospital can absorb more recovery.** If you have hospital capacity and they don't, retry now.
- If they recover faster (high hospital capacity, alliance helps reducing heal times), do not retry without a bigger setup change

## The Hero/Widget Adjustment

The story Bill watched — experienced player reads report, identifies enemy buffs and ratio, adjusts rally, wins — is almost always a hero or widget swap. Here are the most common swaps:

| If they have... | Swap to... | Why |
|---|---|---|
| Heavy Marksman Attack (Zinman/Greg widget) | Lancer-led rally | Rock-paper-scissors |
| Heavy Infantry Defense (Logan widget) | Marksman-led rally with Lethality | Marksman beats Infantry; Lethality cuts through Defense |
| High Health garrison (Patrick stack) | Pure Attack rally — Flint lead, no widget on Lethality | Health pool ignores Lethality; you need Attack volume |
| Lethality-stacked defense | High-Attack offense | Their Lethality is wasted if their Attack can't break your Defense |
| Stacked defensive gem buffs (Damage Reduction Up III) | Offensive Lethality Up III + Troops Damage Up III | Match their buff tier; gem buffs don't stack same-type |

The wiki shows a famous case study (the "Regarding Rally" guide): a player won round 1 with Zinman (Attack widget), swapped to Alonzo (Lethality widget) thinking it would amplify damage, and lost round 2 because the enemy's Infantry Health stat was the actual wall. **More Lethality didn't help because Attack was the bottleneck.** Stat math is situational.

## When to Stop Attacking

Not every battle report tells you to retry. Three signals to abandon:

1. **Their stat advantage is large and broad** — multiple stats up by significant margins, not just one. Single-stat gaps are correctable; multi-stat gaps aren't.
2. **They're still adding buffs faster than you are** — if each battle report shows them with more/better buffs, they're actively defending. You're feeding them.
3. **You're hospital-capped and they're not** — your losses become permanent while theirs heal. Stop.

Recognize when you're being grinded. A successful defender will drain your troops, your gems, and your time. Move to a softer target.

## The Buff/Pet/Gem Cross-Reference

A practical workflow when reading the buffs section of a battle report:

**Defensive pet skills they might have used:**
- **Mammoth** — +10% troop Defense, 2-hour duration
- **Frost Gorilla** — +10% troop Health, 2-hour duration

**Offensive pet skills:**
- **Cave Lion** — +troop Attack
- **Saber-Tooth Tiger** — +troop Lethality
- **Titan Roc** — Armor Rift (-5% enemy max HP — note this is a debuff TO the enemy, see [Pet Buffs](/combat/pet-buffs))

**Defensive gem buffs:**
- **Damage Reduction Up I / II / III** (escalating tiers)
- **Troop Health Up I / II / III**
- **Defense Up I / II / III**

**Offensive gem buffs:**
- **Lethality Up I / II / III**
- **Troops Damage Up I / II / III**

::: warning Gem buffs don't stack same-type
Two Lethality Up II buffs don't double the bonus — only one is active at a time. To stack, you need different tiers (Lethality Up I + Lethality Up II) or different buff types (Lethality Up + Troops Damage Up).
:::

If the enemy battle report shows them stacking 3+ defensive buffs (e.g., Mammoth + Frost Gorilla + Defense Up III + Damage Reduction Up III), they were prepared for the attack. A counter-rally without equivalent stacks will lose.

## The Practical Loop

In actual play, the workflow during an event (Castle Battle, Foundry, contested facility) looks like:

1. **Scout the target** — note troops, hospital, marches, reinforcements
2. **Rally with standard setup** — 50/20/30 PvP, Flint lead, Lethality/Attack buffs popped
3. **Read the resulting battle report** — pattern-match against the ones above
4. **Adjust** — ratio, hero, buffs, or all three
5. **Re-scout** — they may have shifted in response
6. **Rally again** with the adjusted setup
7. **Or abandon** if the report indicated you shouldn't be hitting this target

Repeat. The 6-step loop is how experienced players make decisions you might see as "intuition" — they're just running this loop fast.

## Common Mistakes

1. **Reading only the outcome, not the data.** Victory or defeat alone tells you almost nothing. The data tells you why.
2. **Re-attacking with the same setup after a clean loss.** If something didn't work, change something. Repeated losses with the same setup are just lost troops.
3. **Switching multiple variables at once.** If you change ratio AND hero AND buffs between attacks, you can't isolate what helped. Change one thing at a time when grinding a specific target.
4. **Treating Lethality as a universal damage stat.** Lethality only matters once Attack penetrates Defense. Read the enemy's Defense first.
5. **Ignoring the buffs section.** "I had better stats but lost" almost always means you missed their buffs. Read that section.
6. **Trying to win a clearly lost matchup.** When the gap is huge across multiple stats, no amount of adjustment fixes it. Move on.

## Related Guides

- [Scout Reports](/combat/scout-reports) — what you see *before* combat
- [Battle Reports](/combat/battle-reports) — the anatomy of the report and Bonus Source mechanic
- [Garrison Captain](/combat/garrison-captain) — defensive hero selection for when you're being read
- [Rally Mechanics](/combat/rally-mechanics) — leader vs. joiner mechanics that affect what gets read
- [Pre-Battle Checklist](/combat/pre-battle-checklist) — what to activate before any fight you care about
- [Troop Ratios](/troops/ratios) — the baseline ratios you adjust from

---

*Last verified: May 2026 · Sources: whiteoutsurvival.wiki Regarding Rally analysis, WOS Global on Bonus Source (X/Twitter), Whiteout Survival Combat FAQ (Helpshift), community battle report walkthroughs (Tonton, ajackof.com)*
