# Install Agora on Hermes

Agora works well on Hermes as a skill-first overlay.
The most natural Hermes path is to install Agora skills from the GitHub repo through Hermes' skills system.

## Verified install path

v2.3.0 local verification on 2026-05-06 found that Hermes now expects public
repo packages under `skills/<skill>/SKILL.md` for Agora's tap path. The public
entrypoint package is therefore `skills/agora/SKILL.md`.

The publication command was verified:

```bash
hermes skills publish /Users/macbook/workspace/agora/skills/core/agora --to github --repo malleus35/agora
```

Result:
- Hermes scanned `agora` as `SAFE`
- Hermes created PR #2: `https://github.com/malleus35/agora/pull/2`
- `hermes skills search agora --source skills-sh` did not show the entry yet, so public index availability is pending

After the public index refreshes, the expected install command is:

```bash
hermes skills install skills-sh/malleus35/agora/agora --category agora --yes
```

What this does:
- `install` installs the public `agora` entrypoint into your local Hermes skill library
- `agora` then routes to the correct internal workflow by instruction

## Suggested first installs

Start with the public entrypoint:

```bash
hermes skills install skills-sh/malleus35/agora/agora --category agora --yes
```

This is the recommended v2.3 starter path because `agora` is the public routing entrypoint.
The underlying core skills remain in `skills/core/*` for hosts that support direct local skill discovery.

Modes such as `dialectic`, `skeptic`, `genealogy`, and `court` are documented in `docs/modes.md`.
Modes are not installed as skills.

## Use in Hermes

The easiest in-session entrypoint is:

```bash
/agora
```

Then describe the problem naturally and let Agora route to the right workflow.

You can also load a specific skill directly when you already know the exact workflow you want:

```bash
hermes -s clarify-goals
```

Example prompts after install:

```bash
hermes -s clarify-goals
# then ask:
# "Help me turn this vague product direction into a concrete brief"

hermes -s doubt-list
# then ask:
# "Review this release plan and tell me what must be verified first"
```

## Registry / hub status

Current verified status:
- Hermes can publish the public `agora` package from `skills/core/agora` to the GitHub-backed skills flow.
- Hermes created PR #2 for the public package.
- Hermes currently reports no `agora` result from `skills.sh` search, so index availability is not yet verified.

That means Hermes users should treat the skills.sh entry as submitted but not yet searchable until the index refreshes.

## Publishing note

A publish attempt was made with:

```bash
hermes skills publish /Users/macbook/workspace/agora/skills/core/agora --to github --repo malleus35/agora
```

Hermes created a PR-based submission flow against the specified GitHub repo.
For this project, the public package path is `skills/agora/SKILL.md`; direct local hosts continue to use `skills/core/*`.

## Troubleshooting

- If `hermes skills search agora` does not show results immediately, use the direct identifier form shown above.
- If a skill installs but does not load automatically, use `/skill <name>` explicitly.
- If you want the whole Agora workflow surface in Hermes, start from the public `agora` package; direct local hosts can install the underlying `skills/core/*` set.
