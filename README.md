# Ice Kings Battle Book

A reference website for Whiteout Survival players. Live at **https://greenwh.github.io/battle-book**

Maintained by State 4104. Public access — anyone can read, link, or share.

## What's inside

Event guides, hero strategy, combat references, troop ratios, and a glossary. Every page follows the same structure so readers know where to find what they need.

## Tech

- **VitePress** — static site generator, Markdown-based authoring
- **GitHub Pages** — hosting
- **GitHub Actions** — auto-deploy on every push to `main`
- **Vue components** — reusable visual elements (callouts, point tables, troop ratios)

## Local development

```bash
npm install
npm run dev      # opens at localhost:5173
```

## Building

```bash
npm run build    # outputs to docs/.vitepress/dist
npm run preview  # serves the built site locally
```

## Adding content

See `MAINTENANCE.md` (in the repo root) for the workflow.

Short version:
1. Write the new page as a Markdown file in the appropriate `docs/` subdirectory
2. Add one line to `docs/.vitepress/config.ts` to surface it in the sidebar
3. Commit and push — GitHub Actions deploys automatically

## Contributing

Found an error or want a new guide? [Open an issue](https://github.com/greenwh/battle-book/issues) or send a pull request.

## Credits

Content authored by Bill (alliance leader, State 4104) with research and writing assistance from Claude. Source verification cross-referenced against community guides at wostools.net, whiteoutsurvival.wiki, allclash.com, OneChilledGamer, and BlueStacks, plus official Helpshift documentation.

The game is owned by Century Games. This is an independent fan reference site; not affiliated with the developers.

## License

Content: Creative Commons Attribution 4.0 (CC-BY-4.0) — feel free to reuse with credit.

Code: MIT.
