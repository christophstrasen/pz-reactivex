# reactivex [42] — Development

This repo packages `lua-reactivex` as a standalone Project Zomboid Build 42 mod.

Part of the DREAM mod family:
- DREAM-Workspace (multi-repo convenience): https://github.com/christophstrasen/DREAM-Workspace

## Quickstart (single repo)

Prereqs: `rsync`, `inotifywait` (`inotify-tools`), `inkscape`.

Init submodules:

```bash
git submodule update --init external/lua-reactivex
```

Watch + deploy (default: Workshop wrapper under `~/Zomboid/Workshop`):

```bash
./dev/watch.sh
```

Switch destination:

```bash
TARGET=mods ./dev/watch.sh
```

## How the payload is built

This is a packaging repo: `dev/build.sh` copies Lua payload from `external/lua-reactivex/` into:

`Contents/mods/reactivex/42/media/lua/shared/`

`dev/sync-*.sh` runs `dev/build.sh` automatically.

