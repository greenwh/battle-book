#!/bin/bash
# Regenerates MANIFEST.md at the repo root.
# Run from the battle-book repo root: bash scripts/generate-manifest.sh
# Must be run before every commit that adds or removes pages.

set -e

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
# Extract the sidebar object from config.ts
sed -n '/sidebar:/,/^  },$/p' docs/.vitepress/config.ts >> MANIFEST.md
echo '```' >> MANIFEST.md
echo "" >> MANIFEST.md

echo "## Recent Deployment History" >> MANIFEST.md
echo "" >> MANIFEST.md
git log --oneline -10 2>/dev/null >> MANIFEST.md || echo "(git log unavailable)" >> MANIFEST.md

echo "MANIFEST.md generated."
