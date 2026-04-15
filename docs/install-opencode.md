# Install Agora on OpenCode

Agora v2 is designed as a host overlay.
That means you keep OpenCode as the main agent and add Agora's reasoning workflows on top.

## Install

Add the Agora repo or plugin files according to your OpenCode plugin / command loading flow.
At minimum, ensure these directories are available to the host:

- `commands/`
- `skills/`
- `agents/`
- `docs/`

## Verify installation

After setup, confirm the host can discover the command surface:

```bash
/agora "We have a strategy problem and need the right reasoning mode"
/clarify "Clarify this vague architecture goal"
/decide "Choose between two architectural directions"
/doubt "Review this proposal before execution"
```

## Expected usage

Use Agora when you want supervised judgment artifacts, not just raw generation.
Typical entrypoints:
- `/clarify`
- `/decide`
- `/doubt`
- `/minority-report`
- `/court-review`
- `/agora`

## Example

```bash
/assumption-audit "Expose the hidden assumptions behind our current product framing"
```

## Upgrade / update

Pull the latest repo changes and refresh the host's plugin or command registration.
If commands still reflect the old debate harness wording, reload the command definitions from the updated repository.

## Troubleshooting

- Missing commands usually means the host is not loading the `commands/` directory.
- Missing workflows usually means the host is not resolving files under `skills/`.
- If you only want Hegelian synthesis, use `/agora` with an ideation or strategic synthesis prompt.
