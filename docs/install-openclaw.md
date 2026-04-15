# Install Agora on OpenClaw

Agora is not an OpenClaw replacement.
Use it as a judgment workflow layer on top of your OpenClaw setup.

## Install OpenClaw

OpenClaw's documented recommended path is:

```bash
npm install -g openclaw@latest
openclaw onboard --install-daemon
```

OpenClaw currently recommends:
- Node 24, or
- Node 22.16+

## ClawHub path

OpenClaw's public skill/package registry is ClawHub.
The relevant CLI package is published on npm as `clawhub`.

```bash
npm install -g clawhub
```

The published npm metadata confirms:
- package name: `clawhub`
- CLI binary: `clawhub`

## Current registry status for Agora

A live publish attempt was made from Hermes with:

```bash
hermes skills publish /Users/macbook/workspace/agora/skills/core/clarify-goals --to clawhub
```

Result:
- Hermes reported that ClawHub publishing is not yet supported automatically
- Hermes pointed to the manual submission URL:
  - `https://clawhub.ai/submit`

A direct `clawhub` CLI attempt in the current environment also failed because the local Node runtime was too old for the current ClawHub CLI package.

So the current practical status is:
- OpenClaw support is conceptually aligned through ClawHub-style skill packaging
- automated publication from this environment is not complete yet
- manual submission is currently the valid path for ClawHub listing

## Recommended current usage path

Until the ClawHub listing is completed, use Agora with OpenClaw by keeping the repo-local skill files available in your workflow and treating Agora as a local skill pack.

The most useful local folders are:
- `skills/core/`
- `skills/overlays/`
- `docs/examples/`
- `docs/philosophy.md`

Suggested first skills for OpenClaw-style use:
- `clarify-goals`
- `doubt-list`
- `court-review`
- `dialectic`

## What to expect

OpenClaw is strongest when it feels like a personal assistant that already lives in your channels.
Agora should therefore be added as:
- clarification workflow
- decision workflow
- skeptical review workflow
- governance workflow

not as a heavy new runtime.

## Next step once ClawHub submission lands

Once Agora is listed on ClawHub, this doc should be updated with the exact install slug and a simple:

```bash
clawhub install <agora-skill-slug>
```

style flow.
