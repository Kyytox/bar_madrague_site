#!/usr/bin/env bash
set -euo pipefail

SRC="$HOME/apps/bar_madrague_site"
DEST="/var/www/barlamadrague"

cd "$SRC"
git pull

rsync -a --delete \
  --exclude '.git' \
  --exclude '.gitignore' \
  --exclude 'deploy.sh' \
  --exclude 'README*' \
  "$SRC/" "$DEST/"

echo "Site déployé dans $DEST"
