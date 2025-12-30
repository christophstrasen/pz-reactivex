# reactivex [42] (Project Zomboid mod)

This repo packages `lua-reactivex` as a standalone Project Zomboid Build 42 mod.

- **Mod ID:** `reactivex`
- **Display name:** `reactivex [42]`

## Local development

One-off deploy to your local mods folder:

```bash
./dev/sync-mods.sh
```

Watch mode:

```bash
./dev/watch.sh
```

Workshop wrapper folder (for upload preview):

```bash
./dev/sync-workshop.sh
```

## Upstream

Upstream source lives as a submodule at `external/lua-reactivex` and is developed here:

- https://github.com/christophstrasen/lua-reactivex

This repo is a packaging layer; if you want to change the library implementation, prefer contributing upstream and then updating the submodule pointer here.
