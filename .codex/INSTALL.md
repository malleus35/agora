# Installing Agora for Codex

Enable Agora in Codex through native skill discovery.
Because Agora stores callable skills under `skills/core/`, installation flattens those skill folders into Codex's global skills directory.
Modes are documented in `docs/modes.md` and are not installed as skills.

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
for dir in ~/.codex/agora/skills/core/*; do
  name=$(basename "$dir")
  ln -sfn "$dir" "$HOME/.agents/skills/$name"
done
```

4. Restart Codex.

## Quick use

After installation, the easiest entrypoint is:

```text
$agora "your problem"
```

If you want a specific workflow directly, call the corresponding skill instead.

## Verify

Check that the symlinks exist:

```bash
ls -la ~/.agents/skills | grep -E 'clarify-goals|cartesian-grill|doubt-list|court-review|decision-memo'
```

Then ask Codex to use a specific Agora skill, for example:

```text
Use the clarify-goals skill to turn this vague product request into a concrete brief.
```

## Recommended first skills

The most useful starter set is:
- `clarify-goals`
- `cartesian-grill`
- `doubt-list`
- `court-review`
- `decision-memo`

## Updating

```bash
cd ~/.codex/agora && git pull
```

The symlinks continue to point at the updated repo.

## Uninstalling

```bash
for name in agora clarify-goals cartesian-grill prd-from-requirements tdd-subagent-implementation frame-the-decision steelman doubt-list compare-options assumption-audit minority-report synthesis-memo decision-memo court-review dialectic skeptic genealogy court; do
  rm -f "$HOME/.agents/skills/$name"
done
rm -rf ~/.codex/agora
```

## Why this installation is manual

Unlike Claude Code plugins, Codex uses native skill discovery from `~/.agents/skills/`.
Agora therefore installs by exposing its skill folders to that discovery path.
