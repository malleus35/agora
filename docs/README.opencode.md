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

into `~/.config/opencode/skills/`.

Modes such as `dialectic`, `skeptic`, `genealogy`, and `court` are documented in `docs/modes.md`.
Modes are not installed as skills.

## Recommended first use

After installation, use OpenCode's native skill tool to load `agora` first.
That gives you a common entrypoint and lets Agora route to the right workflow.

If you want to bypass routing and use a workflow directly, load the specific skill instead:
- `clarify-goals`
- `cartesian-grill`
- `doubt-list`
- `court-review`
- `decision-memo`

## Updating

```bash
cd ~/.config/opencode/agora && git pull
```

## Detailed install instructions

See: `.opencode/INSTALL.md`
