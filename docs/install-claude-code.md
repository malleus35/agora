# Install Agora on Claude Code

## Install

Verified user-scope marketplace install:

```bash
/plugin marketplace add malleus35/agora
/plugin install agora@malleus35-agora
```

For local development, add the current checkout as a marketplace source first:

```bash
/plugin marketplace add .
/plugin install agora@malleus35-agora
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

If installed from the Git marketplace, update the marketplace and plugin:

```bash
/plugin marketplace update malleus35-agora
/plugin update agora
```

The verified 2026-05-06 CLI path added `malleus35/agora`, updated `agora@malleus35-agora` from 2.2.0 to 2.3.0 at user scope, and reported that Claude Code should be restarted to apply the update.

## Troubleshooting

- If a command is missing, reinstall the plugin from the updated repo root.
- If the command exists but the framing looks old, confirm the repo has the v2 files under `commands/` and `skills/`.
- If you want the old debate-centered usage, use `/agora` with an explicitly open-ended synthesis prompt.
