#!/bin/bash
# scripts/generate-manifest.sh
# Regenerates docs/public/MANIFEST.md from the current repo state.
# Run from repo root.
#
# The output file is served by VitePress as a static asset at:
#   https://greenwh.github.io/battle-book/MANIFEST.md
#
# This file is the single source of truth for deployed state. It is
# regenerated automatically by GitHub Actions (.github/workflows/update-manifest.yml)
# on every push to main that touches docs/.

set -e

MANIFEST_PATH="docs/public/MANIFEST.md"

mkdir -p docs/public

cat > "$MANIFEST_PATH" << 'EOF_TOP'
# Battle Book — Site Manifest

This file is the **single source of truth** for what's deployed on the Battle Book.
It is regenerated automatically by GitHub Actions on every push to main that touches `docs/`.

Published at: `https://greenwh.github.io/battle-book/MANIFEST.md`
Source at: `https://raw.githubusercontent.com/greenwh/battle-book/main/docs/public/MANIFEST.md`

EOF_TOP

echo "**Last updated:** $(date -u +"%Y-%m-%d %H:%M:%S") UTC" >> "$MANIFEST_PATH"
echo "**Last commit:** \`$(git rev-parse --short HEAD)\`" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"
echo "## Deployed Pages" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"

for dir in $(find docs -mindepth 1 -maxdepth 1 -type d ! -name '.vitepress' ! -name 'public' | sort); do
  section=$(basename "$dir")
  echo "### \`/${section}/\`" >> "$MANIFEST_PATH"
  echo "" >> "$MANIFEST_PATH"
  find "$dir" -name "*.md" | sort | while read -r f; do
    url=$(echo "$f" | sed 's|^docs||; s|\.md$||; s|/index$|/|')
    echo "- \`${url}\` — $(basename "$f")" >> "$MANIFEST_PATH"
  done
  echo "" >> "$MANIFEST_PATH"
done

echo "## Top-Level Files" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"
for f in docs/*.md; do
  if [ -f "$f" ]; then
    url=$(echo "$f" | sed 's|^docs||; s|\.md$||; s|/index$|/|')
    [ -z "$url" ] && url="/"
    echo "- \`${url}\` — $(basename "$f")" >> "$MANIFEST_PATH"
  fi
done
echo "" >> "$MANIFEST_PATH"

echo "## Sidebar Configuration (config.ts excerpt)" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"
echo '```typescript' >> "$MANIFEST_PATH"
sed -n '/sidebar:/,/^  },$/p' docs/.vitepress/config.ts >> "$MANIFEST_PATH"
echo '```' >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"

echo "## Recent Deployment History" >> "$MANIFEST_PATH"
echo "" >> "$MANIFEST_PATH"
echo '```' >> "$MANIFEST_PATH"
git log --oneline -10 2>/dev/null >> "$MANIFEST_PATH" || echo "(git log unavailable)" >> "$MANIFEST_PATH"
echo '```' >> "$MANIFEST_PATH"

echo "Generated $MANIFEST_PATH"
