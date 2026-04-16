# Agora for Codex

Guide for using Agora with Codex via native skill discovery.

## Quick Install

Tell Codex:

```text
Fetch and follow instructions from https://raw.githubusercontent.com/malleus35/agora/refs/heads/main/.codex/INSTALL.md
```

## How it works

Codex discovers skills from `~/.agents/skills/`.
Agora's install flow clones the repo locally and symlinks each skill folder from:
- `skills/core/`
- `skills/overlays/`

into Codex's skill discovery directory.

## Recommended first use

After installation, the easiest entrypoint is:
- `$agora "your problem"`

If you want to bypass routing and use a workflow directly, call the specific skill instead:
- `clarify-goals`
- `doubt-list`
- `court-review`
- `dialectic`

## Updating

```bash
cd ~/.codex/agora && git pull
```

## Detailed install instructions

See: `.codex/INSTALL.md`
