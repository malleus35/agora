# Install Agora on Hermes

Agora works well on Hermes as a skill-first overlay.
The most natural Hermes path is to install Agora skills from the GitHub repo through Hermes' skills system.

## Verified install path

These commands were verified in a live Hermes environment:

```bash
hermes skills tap add malleus35/agora
hermes skills inspect skills-sh/malleus35/agora/skills/core/clarify-goals
hermes skills install skills-sh/malleus35/agora/skills/core/clarify-goals --category agora --yes
```

What this does:
- `tap add` registers the Agora repo as a skill source
- `inspect` previews a specific skill from the repo
- `install` installs that skill into your local Hermes skill library

## Suggested first installs

Start with a small judgment workflow set:

```bash
hermes skills install skills-sh/malleus35/agora/skills/core/agora --category agora --yes
hermes skills install skills-sh/malleus35/agora/skills/core/clarify-goals --category agora --yes
hermes skills install skills-sh/malleus35/agora/skills/core/doubt-list --category agora --yes
hermes skills install skills-sh/malleus35/agora/skills/core/court-review --category agora --yes
hermes skills install skills-sh/malleus35/agora/skills/overlays/dialectic --category agora --yes
```

This bundle has been live-tested in Hermes as a practical starter set:
- `agora` -> umbrella entrypoint when you do not remember the exact skill name
- `clarify-goals` -> vague problem framing
- `doubt-list` -> verification and release review
- `court-review` -> governance and approval separation
- `dialectic` -> explicit Hegelian synthesis mode

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
- Hermes can inspect Agora skills directly from the repo through `skills.sh` identifiers.
- Hermes successfully installed `clarify-goals` from `skills-sh/malleus35/agora/...` in a live test.

That means Hermes users do not need a separate plugin packaging step to start using Agora skills.

## Publishing note

A publish attempt was also made with:

```bash
hermes skills publish /Users/macbook/workspace/agora/skills/core/clarify-goals --to github --repo malleus35/agora
```

Hermes created a PR-based submission flow against the specified GitHub repo.
For this project, the more important user path is direct install from the repo via Hermes skills.

## Troubleshooting

- If `hermes skills search agora` does not show results immediately, use the direct identifier form shown above.
- If a skill installs but does not load automatically, use `/skill <name>` explicitly.
- If you want the whole Agora workflow surface, install multiple core skills plus the `dialectic` overlay instead of relying on a single skill.
