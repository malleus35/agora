# Install Agora on Claude Code

## Install

From the repo root:

```bash
/plugin install --path .
```

Or, once published through the marketplace:

```bash
/plugin install agora
```

## Verify installation

Run these checks inside Claude Code:

```bash
/agora "We need a reasoning workflow for a product decision"
/clarify "Turn this vague project idea into a concrete brief"
/doubt "Review this release plan for hidden failure modes"
```

You should also see the Agora-specific command files in the plugin.

## What to expect

Agora does not replace Claude Code.
It adds overlay workflows for:
- clarification
- decision framing
- doubt and verification
- dissent preservation
- governance review

## Example usage

```bash
/decide "Should we keep a plugin-first strategy or split Agora into core and overlay packages?"

/court-review "Review this launch decision across strategist, operator, censor, historian, and sovereign perspectives"
```

## Update / upgrade

If installed from local path, reinstall after pulling updates:

```bash
git pull
/plugin install --path .
```

If installed from marketplace, use the host's plugin update flow when available.

## Troubleshooting

- If a command is missing, reinstall the plugin from the updated repo root.
- If the command exists but the framing looks old, confirm the repo has the v2 files under `commands/` and `skills/`.
- If you want the old debate-centered usage, use `/agora` with an explicitly open-ended synthesis prompt.
