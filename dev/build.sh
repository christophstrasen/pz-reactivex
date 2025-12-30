#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$REPO_ROOT"

UPSTREAM_DIR="$REPO_ROOT/external/lua-reactivex"
DEST_SHARED="$REPO_ROOT/Contents/mods/reactivex/42/media/lua/shared"

if [ ! -d "$UPSTREAM_DIR/reactivex" ]; then
  echo "[error] missing upstream folder: $UPSTREAM_DIR/reactivex"
  exit 1
fi

mkdir -p "$DEST_SHARED/reactivex"

# Core entrypoint + module tree.
rsync -a "$UPSTREAM_DIR/reactivex.lua" "$DEST_SHARED/reactivex.lua"
rsync -a --delete --include='*/' --include='*.lua' --exclude='*' \
  "$UPSTREAM_DIR/reactivex/" "$DEST_SHARED/reactivex/"

# Root-level operators aggregator needed by the nested shim:
# `reactivex/operators.lua` tries `require("operators")`.
rsync -a "$UPSTREAM_DIR/operators.lua" "$DEST_SHARED/operators.lua"

echo "[built] reactivex payload -> $DEST_SHARED"

