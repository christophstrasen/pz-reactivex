# reactivex [42] (Project Zomboid mod)

This repo packages `lua-reactivex` as a standalone Project Zomboid Build 42 mod.

- **Mod ID:** `reactivex`
- **Display name:** `reactivex [42]`

## Scope

This repo is a **packaging wrapper**: it turns `lua-reactivex` into a Project Zomboid Build 42 mod (`reactivex [42]`).

- For ReactiveX library docs and implementation, see upstream: https://github.com/christophstrasen/lua-reactivex
- For DREAM suite overview and cross-module examples, start at DREAM (meta-mod): https://github.com/christophstrasen/pz-dream

## Local development

See `development.md`.

## Upstream

Upstream source lives as a submodule at `external/lua-reactivex` and is developed here:

- https://github.com/christophstrasen/lua-reactivex

This repo is a packaging layer; if you want to change the library implementation, prefer contributing upstream and then updating the submodule pointer here.
