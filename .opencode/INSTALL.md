# Installing Agora for OpenCode

Enable Agora in OpenCode through native skill discovery.
Because Agora stores callable skills under `skills/core/`, installation flattens those skill folders into OpenCode's discovered skills path.
Modes are documented in `docs/modes.md` and are not installed as skills.

## Prerequisites

- OpenCode installed
- Git

## Installation

1. Clone the repo:

```bash
git clone https://github.com/malleus35/agora.git ~/.config/opencode/agora
```

2. Create the global skills directory:

```bash
mkdir -p ~/.config/opencode/skills
```

3. Symlink each Agora skill into OpenCode's global skills directory:

```bash
for dir in ~/.config/opencode/agora/skills/core/*; do
  name=$(basename "$dir")
  ln -sfn "$dir" "$HOME/.config/opencode/skills/$name"
done
```

4. Restart OpenCode.

## Quick use

After installation, the easiest entrypoint is the `agora` skill itself.
Load it first, then describe the problem naturally.

If you want a specific workflow directly, load that specific skill instead.

## Verify

List a few installed skill links:

```bash
ls -la ~/.config/opencode/skills | grep -E 'clarify-goals|cartesian-grill|doubt-list|court-review|decision-memo'
```

Then in OpenCode ask it to use the native skill tool, for example:

```text
Use the skill tool to list skills.
Use the skill tool to load clarify-goals.
```

## Recommended first skills

Start with:
- `clarify-goals`
- `cartesian-grill`
- `doubt-list`
- `court-review`
- `decision-memo`

## Updating

```bash
cd ~/.config/opencode/agora && git pull
```

The symlinks continue to point at the updated repo.

## Uninstalling

```bash
for name in agora clarify-goals cartesian-grill prd-from-requirements tdd-subagent-implementation frame-the-decision steelman doubt-list compare-options assumption-audit minority-report synthesis-memo decision-memo court-review dialectic skeptic genealogy court; do
  rm -f "$HOME/.config/opencode/skills/$name"
done
rm -rf ~/.config/opencode/agora
```

## Alternative paths supported by OpenCode

OpenCode also discovers skills from:
- `.opencode/skills/`
- `.claude/skills/`
- `.agents/skills/`
- `~/.claude/skills/`
- `~/.agents/skills/`

This install guide uses `~/.config/opencode/skills/` because it is the clearest OpenCode-native global path.
