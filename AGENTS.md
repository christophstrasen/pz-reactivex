# pz-reactivex — Agent Guide

Quick rules for working with this repo (lua-reactivex packaging mod for Build 42).

## Priority and scope

- **Priority:** system > developer > `AGENTS.md` > `.aicontext/*` > task instructions > file-local comments.
- **Scope:** this file applies to the `pz-reactivex/` repo only.

## What this repo is

- This is a packaging repo: `dev/build.sh` copies Lua payload from `external/lua-reactivex/` into `Contents/mods/reactivex/42/media/lua/shared/`.
- Prefer making payload changes in `external/lua-reactivex/` first, then run `./dev/build.sh` to sync the shipped copy.

## Verification

Ensure submodules are initialized:
- `git submodule update --init external/lua-reactivex`

After Lua code changes, run:
- `luacheck Contents/mods/reactivex/42/media/lua/shared/reactivex Contents/mods/reactivex/42/media/lua/shared/reactivex.lua Contents/mods/reactivex/42/media/lua/shared/operators.lua`
- `cd external/lua-reactivex && lua tests/runner.lua`

Prefer using `pre-commit run --all-files` where available (mirrors CI).
