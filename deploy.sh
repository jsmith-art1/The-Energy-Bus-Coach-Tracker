#!/bin/bash
NEWEST=$(ls -t ~/Downloads/index*.html | head -1)
cp "$NEWEST" index.html
git add index.html
git commit -m "Update tracker"
git push
echo "✓ Live in ~2 minutes — used $NEWEST"
