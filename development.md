# reactivex [42] — Development

This repo packages `lua-reactivex` as a standalone Project Zomboid Build 42 mod.

Part of the DREAM mod family:
- DREAM-Workspace (multi-repo convenience): https://github.com/christophstrasen/DREAM-Workspace

## Quickstart (single repo)

Prereqs (for the `dev/` scripts): `rsync`, `inotifywait` (`inotify-tools`), `inkscape`.

Init submodules:

```bash
git submodule update --init external/lua-reactivex
```

## Sync

Deploy to your local Workshop wrapper folder (default):

```bash
./dev/sync-workshop.sh
```

Optional: deploy to `~/Zomboid/mods` instead:

```bash
./dev/sync-mods.sh
```

## Watch

Watch + deploy (default: Workshop wrapper under `~/Zomboid/Workshop`):

```bash
./dev/watch.sh
```

Optional: deploy to `~/Zomboid/mods` instead:

```bash
TARGET=mods ./dev/watch.sh
```

## How the payload is built

This is a packaging repo: `dev/build.sh` copies Lua payload from `external/lua-reactivex/` into:

`Contents/mods/reactivex/42/media/lua/shared/`

`dev/sync-*.sh` runs `dev/build.sh` automatically.

## Tests

This packaging repo does not ship its own unit tests. To run upstream lua-reactivex tests:

```bash
cd external/lua-reactivex
busted tests
```
