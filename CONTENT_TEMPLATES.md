# Battle Book Content Templates

These templates are the discipline that keeps the site consistent. Every event guide reads like every other event guide. Every hero page reads like every other hero page. A reader who knows where to find "Common Mistakes" on the SvS page can find it on the Bear Trap page in the same place.

Use the appropriate template below when writing new content. Deviate only when the content genuinely doesn't fit — and document why in the changelog.

All content is **Markdown** (`.md`), not HTML, with optional Vue component tags (e.g. `<Callout>`, `<TroopRatio>`) for structured visual elements.

---

## Template 1 — Event Guide

For: any timed in-game event (SvS, Bear Trap, Foundry Battle, KoI, Sunfire Castle, Canyon Clash, Frostfire Mine, Crazy Joe, Arena seasons, etc.)

```markdown
---
title: [Event Name]
description: [One-line description for search/SEO]
---

# [Event Name]

<Callout type="info">
**Quick take:** [One-sentence summary of what this event is and why it matters]
</Callout>

## At a Glance

- **Frequency:** [Daily / Weekly / Biweekly / Monthly / Seasonal]
- **Duration:** [How long the event runs]
- **Eligibility:** [Furnace level, server age, prerequisites]
- **Why it matters:** [Rewards, strategic value, what you miss by skipping]

## How It Works

[2–4 paragraphs explaining the mechanics in plain language. Sequenced. No game jargon without a glossary link.]

[Common misconceptions section if applicable]

## Scoring

[If the event has scoring, a points table here. Otherwise omit this section.]

| Activity | Points | Notes |
|---|---|---|
| ... | ... | ... |

[Highlight the highest-value activities. Include stockpile guidance.]

## Phase by Phase

### Phase 1 — [Name]
**Time:** [UTC range]

[What happens, what to do, common mistakes]

### Phase 2 — [Name]
[...]

## Strategy by Player Type

### F2P / Minimal Spend
[Specific tactics that work without spending. What to skip.]

### Light Spender
[What's worth a small purchase. What's still skippable.]

### Heavy Spender
[Where money has the most impact. Where it's wasted.]

## Common Mistakes

1. **[Mistake]** — [Why it's a mistake, how to avoid]
2. **[Mistake]** — [...]
3. **[Mistake]** — [...]

## Quick Reference

[The "if you only read one section, read this" summary. Designed to be glanceable on mobile during the event. Bullet points or short numbered list. No more than 8 items.]

## Related Guides

- [Link to related event]
- [Link to related strategy page]
- [Link to relevant hero strategy]

---

*Last verified: [Date] · Sources: [List authoritative sources]*
```

---

## Template 2 — Hero Page

For: individual hero pages (Flint, Molly, Mia, Bahiti, etc.)

```markdown
---
title: [Hero Name]
description: [One-line tier verdict]
---

# [Hero Name]

<HeroCard
  name="[Name]"
  rarity="[Mythic/Epic/etc]"
  class="[Infantry/Lancer/Marksman]"
  generation="[Gen 1/2/3/etc]"
  tier="[S/A/B/C]"
/>

## Quick Take

[Two sentences. Tier verdict and what makes them good or not.]

## When You Get Them

- **Acquisition:** [Lucky Wheel, story progression, shard shop, etc.]
- **Server unlock:** [Approximate day or generation]
- **Cost to develop:** [F2P-friendly / requires investment / whale only]

## Skills

### [Skill 1 Name] — [Type: Expedition / Exploration / Combat]
[Description in plain language. Note if this is the skill that matters for rally joining.]

### [Skill 2 Name] — [Type]
[...]

[Continue for all skills, including any recent reworks]

## Gear & Enhancement Priority

- **Priority slots:** [Per class — Infantry: Gloves/Belt; Lancer: Goggles/Boots; Marksman: Goggles/Boots]
- **Mythic transfer plan:** [If/when to transfer Mythic gear from another hero]
- **Stop point:** [When to stop investing if F2P]

## Best Used For

- **[Activity / Event]:** [Why they're good here]
- **[Activity / Event]:** [...]
- **[Avoid for]:** [Where they're a poor fit]

## Pairs Well With

- **[Other hero]** — [Synergy explanation]
- **[Other hero]** — [...]

## F2P Stopping Points

[Specific advice for low-spend players: how many stars, how many shards, when investment becomes wasteful]

## Compare To

- [Link to similar hero page]
- [Link to a tier list comparison]

---

*Last verified: [Date]*
```

---

## Template 3 — Combat / Strategy Reference

For: pages explaining a specific mechanic or technique (rally joining, garrison swap, troop replenishment, shield mechanics, healing batches, etc.)

```markdown
---
title: [Topic Name]
description: [One-line description]
---

# [Topic Name]

<Callout type="info">
**TL;DR:** [Two-sentence summary of the technique and why it matters]
</Callout>

## What This Is

[1–2 paragraphs explaining the mechanic in plain language]

## When To Use It

- [Situation where this applies]
- [Another situation]
- [When NOT to use it]

## How To Do It

### Step 1 — [Action]
[Specific instruction]

### Step 2 — [Action]
[Specific instruction]

[Continue for all steps. Include screenshots in `public/images/` when helpful.]

## Common Mistakes

1. **[Mistake]** — [Why it fails, what to do instead]
2. **[Mistake]** — [...]

## Worked Example

[A concrete scenario demonstrating the technique end-to-end. Numbers, times, sequence.]

## Related Topics

- [Link]
- [Link]

---

*Last verified: [Date]*
```

---

## Template 4 — Strategy Hub Page

For: section landing pages (Events Hub, Heroes Hub, Combat Basics Hub, etc.)

```markdown
---
title: [Hub Name]
description: [One-line description]
---

# [Hub Name]

[1–2 paragraph intro: what this section covers and how to navigate it]

## [Sub-category 1]

[Brief description]

- [Page link] — [One-line summary]
- [Page link] — [One-line summary]

## [Sub-category 2]

[...]

## Where To Start

[Recommendations for new players, returning players, or specific use cases]
```

---

## Template 5 — Reference Page

For: pure data (troop ratios, point values, time zone tables, glossary, building priorities)

```markdown
---
title: [Reference Name]
description: [One-line description]
---

# [Reference Name]

[Short intro — what this is, when to use it]

## [Section]

[Tables, lists, or component-rendered data]

## [Section]

[...]

## Notes

- [Caveats, version info, source attribution]

---

*Last verified: [Date]*
```

---

## Style Rules (apply to all templates)

### Voice
- **Direct.** "Use Mithril on Day 4." Not "It is generally recommended that players consider using Mithril."
- **Plain language.** Avoid game jargon without a glossary link the first time it appears.
- **Honest about uncertainty.** "Community consensus is X, but I haven't verified the exact formula" beats false confidence.

### Structure
- **Lead with the answer.** No preamble, no "in this guide we will explore..." — get to the point.
- **Use the templates.** A reader who learns where Common Mistakes lives on one page can find it on every page.
- **One concept per heading.** Don't pile multiple ideas under a single H2.

### Formatting
- **Bold for emphasis on the key term in a sentence**, not for whole sentences.
- **Tables for structured data, prose for explanation.** Don't bullet-list everything.
- **Components for visual elements** — use `<Callout>` not blockquotes for tips. Use `<TroopRatio>` not text descriptions for compositions. Use `<PointsTable>` not raw Markdown tables for scoring.

### Frontmatter
Every page must have:
```yaml
---
title: [Page Title]
description: [Short description for search and SEO — under 160 characters]
---
```

### Date stamps
End every content page with:
```markdown
---
*Last verified: [Date] · Sources: [List]*
```
This forces accountability for staleness. When the date is more than 6 months old, a re-verification pass is overdue.

### Cross-linking
- **Inline links** when a concept is mentioned in prose
- **"Related Guides" section** at the bottom curated by hand
- **Don't over-link** — every reference doesn't need a link, just the first mention or the most relevant ones

### Mobile-first
- **Short paragraphs** (3–5 lines max on a phone screen)
- **Avoid wide tables** — they horizontal-scroll on mobile, which most readers won't do
- **Front-load the answer** — readers on mobile may not scroll past the first screen
