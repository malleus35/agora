# Agora for OpenCode

Guide for using Agora with OpenCode via native skill discovery.

## Quick Install

Tell OpenCode:

```text
Fetch and follow instructions from https://raw.githubusercontent.com/malleus35/agora/refs/heads/main/.opencode/INSTALL.md
```

## How it works

OpenCode discovers skills from global and project skill directories.
Agora's install flow clones the repo locally and symlinks each skill folder from:
- `skills/core/`
- `skills/overlays/`

into `~/.config/opencode/skills/`.

## Recommended first use

After installation, use OpenCode's native skill tool to:
- list skills
- load `clarify-goals`
- load `doubt-list`
- load `court-review`
- load `dialectic`

## Updating

```bash
cd ~/.config/opencode/agora && git pull
```

## Detailed install instructions

See: `.opencode/INSTALL.md`
