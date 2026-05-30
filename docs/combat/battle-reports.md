---
title: Battle Reports
description: The anatomy of a battle report, the Bonus Source mechanic, and how to extract enemy hero, buff, and widget information from the data.
---

# Battle Reports

::: info Quick take
A battle report is the most information-dense single screen in the game. It shows both sides' stats, troops sent vs. survived, active buffs, pet skills used, and casualty breakdowns. Knowing how to read it is the difference between losing twice for the same reason and figuring out the enemy's setup. The mechanic that most players miss is the **Bonus Source** — who actually owns the stats applied to the fight — which matters most in garrison defense.
:::

## What a Battle Report Contains

A battle report has six visible sections. From top to bottom:

1. **Header** — date/time, location (coordinates or named building), and outcome (Victory/Defeat)
2. **Hero loadouts** — each side's hero lineup, with widgets and gear icons
3. **Active buffs** — gem buffs, pet skills, alliance/state buffs active on each side at the moment of combat
4. **Stats comparison** — Attack, Defense, Health, Lethality for each side, with up/down arrows indicating who had the advantage
5. **Troop section** — how many of each type were sent, and how many survived
6. **Casualty breakdown** — lightly wounded, wounded, losses, and (for defenders) troops sent to enlistment

Each section answers a different question. The casual player only reads the outcome. The intermediate player reads the stats. The advanced player reads the buffs and the hero loadouts to **reverse-engineer how the enemy built their attack**.

## The Bonus Source Mechanic

This is the single most important mechanic to internalize, and it's the one that makes seemingly identical battles produce wildly different results.

**Bonus Source** is the source of the heroes, skills, and stats applied to the entire battle math. Whose Chief Gear, hero stats, and battle research actually drive the calculation? It depends on the battle type:

| Battle Type | Leader | Bonus Source |
|---|---|---|
| Solo attack | The attacker | Same person (the attacker) |
| Rally | The rally caller | Same person (the rally leader) |
| Garrison defense | The flagged member at top of garrison list | **Different person — the member with the highest total combat power** |
| City defense (reinforced) | The city owner | **Same rule as garrison — highest combat power** |

The combat power calculation that determines the Bonus Source in a garrison combines: **Chief Gear, Charms, Hero Gear, Hero Power, and Battle Research**. The member with the largest sum of these wins the Bonus Source slot.

### Why This Matters

A garrison defender's *leader* (flagged top of list) and *Bonus Source* can be different people. The leader is whoever was assigned the flag (often the captain by role). The Bonus Source is whoever happens to have the highest combat power in the garrison.

**Three implications:**

1. **A weak-looking garrison can fight at whale stats.** If your alliance hides a top-power member in the garrison list and a mid-power member takes the leader slot, attackers reading the scout see a manageable target. They get hit with the whale's stats in combat. This is a deliberate trap setup.

2. **Adding a weaker reinforcement to a strong garrison doesn't hurt.** Their stats won't be used. They contribute troops as bodies, and their hero's first Expedition skill contributes to the top-4 skill pool, but their gear/research is ignored.

3. **The Bonus Source's hero skills are what defenders fight with.** The Chief Gear, Charms, and the Bonus Source's hero loadout drive the math. Other members' heroes contribute only their first Expedition skill (via the top-4 mechanic — see [Rally Mechanics](/combat/rally-mechanics)).

::: tip Reading a garrison battle report
When you read a battle report from a garrison defense, look at the *Bonus Source's* heroes and gear in the lineup — not the flagged leader's. The Bonus Source is who you were really fighting.
:::

## The Four Stats Explained

The stats comparison shows four numbers per side, with arrows indicating who's higher (green up ↑) or lower (red down ↓).

### Attack

The base damage your troops deal before the enemy's defense is applied. **High Attack strips enemy Defense quickly.** Once a troop's Defense is depleted, every additional Attack point translates to Health damage.

Sources: Chief Gear (especially the troop-specific pieces), hero Expedition skills, certain widgets (Zinman = +15% defender troop attack at max), and research.

### Defense

The damage reduction your troops apply to incoming Attack. **High Defense delays Health loss.** Once Defense is depleted, the troop takes Health damage directly.

Sources: Chief Gear, defensive hero skills (Sergey's Defenders' Edge -20% damage taken, Logan's Lion Intimidation -20% damage taken), pet skills (Mammoth +10% troop defense), gem buffs.

### Health

The pool of damage a troop can absorb after Defense is gone. **High Health extends survival time.**

Sources: Chief Charms, defensive hero skills (Patrick's Super Nutrients +25% troop Health, Philly's widget +15% garrisoned Health, Logan's Leader Inspiration +25% Health), pet skills (Frost Gorilla +10% troop health), gem buffs.

### Lethality

The chance and magnitude of your Attack actually killing the enemy troop rather than just wounding it. **High Lethality means each Attack landing has a higher chance to be a kill.**

Sources: Chief Charms, lethal hero skills (Flint's Immolation +25% Lethality post-rework, Molly's widget +Lancer Lethality), buffs.

### The Stat Interaction

Stats compound in a specific order:

1. **Attack** strips **Defense**
2. **Lethality** + remaining **Attack** chip away at **Health**
3. When **Health** reaches zero, the troop is wounded or killed

This means **Lethality is wasted if you don't have enough Attack to penetrate Defense in the first place**. Conversely, **high Attack against high Health does damage but rarely kills** without Lethality. This is the math behind the "no King of Stats" wisdom — the best stat depends on what the enemy has.

::: warning The Lethality trap
A common mistake: swapping in a Lethality-heavy hero to boost rally damage, only to lose because the enemy's Defense was the real wall. Look at the enemy's *Defense* in the previous battle report — if it's high, you need Attack to break through first, not more Lethality. Lethality only matters once you've gotten past Defense.
:::

## The Casualty Breakdown

After the stats comparison, the report shows what actually happened to each side's troops:

- **Total troops sent / surviving** per hero, per troop type
- **Lightly wounded** — troops that took damage but didn't need hospital treatment. Free to use again.
- **Wounded** — troops that need to go to the hospital. Heal cost in resources.
- **Losses** — troops that died. Gone forever (for the attacker).
- **Enlistment** (defenders only) — a portion of defending troops killed are routed to enlistment instead of dying. The defender recovers them by training, but at the cost of normal training time.

::: tip The defender's enlistment advantage
When a defender's troops "die," a portion of them go to enlistment — meaning the defender gets them back for free over training time. The attacker's lost troops are gone permanently. This is one of several mechanical advantages defenders have, alongside potential alliance facility buffs and home-state buffs.
:::

The casualty section is where you see the **rock-paper-scissors** outcomes:

- If your Marksmen all died but your Infantry survived: your Infantry line held but the enemy reached your backline anyway (often via Marksmen overpenetrating). Adjust ratio.
- If your Infantry all died but your Marksmen barely scratched: your Infantry didn't tank long enough. Adjust ratio.
- If everything died proportionally: the math was just bigger than you. Don't re-attack without a stat increase.

The [Reading Battle Reports](/combat/reading-reports) page walks through specific patterns and their meaning.

## Detecting Enemy Buffs and Pet Skills

The buffs section of a battle report shows **exactly what each side had active** at the moment of combat. This is how you "figure out what buffs they were using."

What you can see:

- **Gem buffs** — Troops Damage Up, Lethality Up, Damage Reduction, Health Up, etc., shown as icons with names
- **Pet skills active** — Cave Lion, Mammoth, Frost Gorilla, etc., shown with their icons
- **Alliance Facility buffs** — if they're holding facilities, those buffs are listed
- **State Bonus** — if SvS or other state-tier buffs were active
- **Hero widgets** (exclusive gear) — visible on each hero icon

What you cannot see directly but can **infer**:

- Their hero star level (only inferable through stat percentages)
- Their hero gear quality (only inferable through stat percentages)
- Their research investment (only inferable through stat percentages)

The next section explains how to read those stat percentages to infer what's hidden.

## Reading Widgets from Stat Percentages

Hero widgets (exclusive gear) add huge percentage bonuses to specific troop types. When you see an unusually inflated stat in a battle report, you can reverse-engineer which widget the enemy had active.

| Stat pattern | Likely Widget |
|---|---|
| Marksman Attack 700%+ in a defense report | Zinman widget on defense (+15% defender troop Attack at max) |
| Marksman Attack 290%+ from a Gen 3 player | Greg widget unlocked (Gen 3 Marksman template) |
| Infantry Defense 290%+ in a defense | Logan widget Lv2 (+15% Defender Troop Defense) on defense |
| Infantry Health 800%+ in a garrison | Multiple stacked Patrick widgets (joiners + captain all leading Patrick) |
| Lancer Attack 290%+ from a Gen 3 player | Mia widget unlocked (Gen 3 Lancer template) |
| Lancer Lethality 700%+ in a garrison | Molly widget on defense (+Lancer Lethality at max) |
| Marksman Attack 700%+ in offense | Alonzo's Captain Ahab widget (+Marksman Lethality, +Rally Lethality) |

Pre-Gen 3 baseline stats are roughly +200% from a Gen 1 hero, +240% from Gen 2. Anything substantially above those numbers indicates a widget, a star-level investment, or stacked buffs.

::: tip The reverse-engineer workflow
1. Note unusually high stats (something well above what their gen should give)
2. Cross-reference the stat type with the widget table above
3. Confirm by checking their visible hero loadout — does the hero match the suspected widget?
4. Use this knowledge to plan the counter: a Zinman-loaded defender wants you to hit them with Lancers (counters Marksmen) instead of Infantry
:::

## Solo vs. Rally vs. Garrison — Reading the Differences

The same battle report layout applies to all three battle types, but what you're reading differs:

**Solo report:**
- One hero loadout per side
- One Bonus Source per side (each side's chief)
- Cleanest read — what you see is what you fought

**Rally report:**
- Attacker side shows leader's hero loadout (Bonus Source) and top-4 joiner skills as icons
- Defender side may be solo or garrison (apply garrison rules if garrison)
- Joiner gear is irrelevant — don't read into it

**Garrison report:**
- Defender side shows Bonus Source's hero loadout (not the leader's, if different)
- Top-4 selected first Expedition skills from joiners contribute as extra skill icons
- Look at the strongest reinforcement in the visible list to identify the Bonus Source

## Common Mistakes

1. **Reading the wrong side's heroes.** In a garrison report, the leader (flag at top) and Bonus Source can differ. Read the Bonus Source's loadout if you want to know who you really fought.
2. **Comparing stat numbers without context.** A 700% Marksman Attack in a Gen 2 report is huge; in a Gen 4 report it's average. Context matters.
3. **Ignoring the buffs section.** If they had Mammoth + Frost Gorilla + 12-hour defensive gem buff active, they had +20% defense + 10% health + extra damage reduction — and your "stat advantage" was much smaller than it looked.
4. **Treating Lethality and Attack as interchangeable.** Lethality only matters once Attack penetrates Defense. Read both stats together.
5. **Assuming the casualty breakdown is the whole story.** Lost troops cost healing resources (wounded) or are permanent losses. The "victory" outcome doesn't mean it was profitable.
6. **Not re-checking after a meta shift.** Flint's January 2026 rework changed his Immolation skill — old battle reports from before the change reflect different math. Use recent reports.

## Related Guides

- [Scout Reports](/combat/scout-reports) — what you see *before* combat
- [Reading Battle Reports](/combat/reading-reports) — how to adjust your strategy from the data
- [Rally Mechanics](/combat/rally-mechanics) — leader vs. joiner, top-4 mechanic
- [Garrison Captain](/combat/garrison-captain) — captain trio and defense ratios
- [Pet Buffs](/combat/pet-buffs) — what activating pets shows up as on a report

---

*Last verified: May 2026 · Sources: WOS Global on Bonus Source mechanics (X/Twitter), Whiteout Survival Combat FAQ (Helpshift), whiteoutsurvival.wiki Regarding Rally analysis, whiteoutsurvival.wiki Combat Stats & Special Bonuses, community testing on widget stat percentages*
