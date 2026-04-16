# Installing Agora for Codex

Enable Agora in Codex through native skill discovery.
Because Agora stores skills under `skills/core/` and `skills/overlays/`, installation flattens those skill folders into Codex's global skills directory.

## Prerequisites

- Git
- OpenAI Codex CLI

## Installation

1. Clone the repo:

```bash
git clone https://github.com/malleus35/agora.git ~/.codex/agora
```

2. Create the Codex skills directory:

```bash
mkdir -p ~/.agents/skills
```

3. Symlink each Agora skill into Codex's global skill discovery path:

```bash
for dir in ~/.codex/agora/skills/core/* ~/.codex/agora/skills/overlays/*; do
  name=$(basename "$dir")
  ln -sfn "$dir" "$HOME/.agents/skills/$name"
done
```

4. Restart Codex.

## Verify

Check that the symlinks exist:

```bash
ls -la ~/.agents/skills | grep -E 'clarify-goals|doubt-list|court-review|dialectic'
```

Then ask Codex to use a specific Agora skill, for example:

```text
Use the clarify-goals skill to turn this vague product request into a concrete brief.
```

## Recommended first skills

The most useful starter set is:
- `clarify-goals`
- `doubt-list`
- `court-review`
- `dialectic`

## Updating

```bash
cd ~/.codex/agora && git pull
```

The symlinks continue to point at the updated repo.

## Uninstalling

```bash
for name in clarify-goals frame-the-decision steelman doubt-list compare-options assumption-audit minority-report synthesis-memo decision-memo court-review dialectic skeptic genealogy court; do
  rm -f "$HOME/.agents/skills/$name"
done
rm -rf ~/.codex/agora
```

## Why this installation is manual

Unlike Claude Code plugins, Codex uses native skill discovery from `~/.agents/skills/`.
Agora therefore installs by exposing its skill folders to that discovery path.
