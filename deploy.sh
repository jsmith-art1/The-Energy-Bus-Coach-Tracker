#!/bin/bash
NEWEST=$(ls -t ~/Downloads/index*.html 2>/dev/null | head -1)
if [ -z "$NEWEST" ]; then
  echo "✗ No index*.html found in Downloads"
  exit 1
fi
cp "$NEWEST" index.html
git add index.html
git commit -m "Update tracker"
git push
echo "✓ Live in ~2 minutes — used $NEWEST"
