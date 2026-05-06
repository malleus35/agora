# Agora

English | [한국어](README.ko.md) | [中文](README.zh.md) | [日本語](README.ja.md)

> Agents generate options. Agora helps humans supervise judgment.

Agora is a skill-first workflow registry for supervised AI judgment in Claude Code and Codex.
It adds clarification, doubt, dissent, synthesis, and governance workflows to agent work that needs reviewable artifacts instead of one-off answers.

Agora provides reusable reasoning commands, durable judgment artifacts, workflow registry routing, and philosophical modes when a problem needs more than raw generation.
Unsupported or pending providers are intentionally not listed in the quick start.

## Installation quick start

Use the verified surfaces below.

### Claude Code

```bash
# Verified Git marketplace path
/plugin marketplace add malleus35/agora
/plugin install agora@malleus35-agora
```

### skills.sh CLI

```bash
npx skills add https://github.com/malleus35/agora --skill agora
```

### Codex

```text
Fetch and follow instructions from https://raw.githubusercontent.com/malleus35/agora/refs/heads/main/.codex/INSTALL.md
```

## Quick start

The easiest way to use Agora is to start from the common entrypoint and describe your problem naturally.

### Claude Code

```bash
/agora "your problem"
```

### Codex

```text
$agora "your problem"
```

If you want to use a specific workflow directly, you can still call the underlying skill or command yourself.
For example: `clarify-goals`, `cartesian-grill`, `doubt-list`, or `court-review`.

## What changed in v2

Agora is no longer positioned as a debate harness first.
It is now an overlay that helps teams:
- clarify the real decision before acting
- preserve dissent instead of flattening it
- write doubt lists before trusting outputs
- grill plans one question at a time before batch verification
- surface hidden assumptions and inherited categories
- produce reviewable artifacts for human approval

Philosophy is methodology, not decoration.
Dialectic, skepticism, genealogy, and court review are practical modes, not roleplay.

## Core skills, modes, and workflows

### Core skills
Small reusable workflows that can be used independently:
- agora
- clarify-goals
- cartesian-grill
- prd-from-requirements
- tdd-subagent-implementation
- frame-the-decision
- compare-options
- doubt-list
- assumption-audit
- minority-report
- decision-memo
- steelman
- synthesis-memo
- court-review

### Modes
Opinionated reasoning modes for problems that need a stronger worldview.
Modes are not installed as skills:
- dialectic — strategic synthesis and ideation
- skeptic — verification and risk review
- genealogy — assumption and value critique
- court — governance and approval structure

### Workflow registry
`agora` contains a workflow registry that keeps multi-skill flows connected even when host skill chaining is unreliable.
See `docs/workflows.md`.

## Commands

Agora exposes small entrypoints so users can get value from one command without learning the whole system.

- `/agora "prompt"` — route to the right workflow
- `/clarify "prompt"` — extract purpose, constraints, success criteria, unknowns
- `/decide "prompt"` — structure a real fork and write a decision memo
- `/doubt "prompt"` — generate a Descartes-style doubt list and verification plan
- `/dialectic "prompt"` — run explicit Hegelian synthesis mode for contradiction and ideation
- `/steelman "prompt"` — restate an opposing view in strongest form before critique
- `/assumption-audit "prompt"` — expose hidden premises, inherited categories, and value conflicts
- `/minority-report "prompt"` — preserve unresolved objections and revisit triggers
- `/court-review "prompt"` — separate strategist, operator, censor, historian, sovereign views

## Quick examples

```bash
/agora "We have an architecture disagreement and need the right reasoning mode."

/clarify "We need an internal agent harness, but I am not sure whether the first goal is reliability or collaboration."

/decide "Should our agent harness use a shared-spec overlay or a repo-per-agent strategy?"

/doubt "Review this release plan for hidden failure modes before we ship."

/dialectic "We need synthesis between low-friction adoption and philosophical differentiation."

/agora "Grill this PRD before implementation and tell me what still needs verification."
```

## How `/agora` routes work

- vague problem -> clarify-goals
- real decision fork -> frame-the-decision + compare-options
- plan / design / PRD stress test -> plan-stress-test workflow: clarify-goals + cartesian-grill + doubt-list
- clear requirements -> prd-from-requirements
- implementation -> tdd-subagent-implementation
- open-ended ideation -> dialectic mode + synthesis workflow
- verification / risk / pre-release review -> skeptic mode + doubt-list
- governance / approval / responsibility separation -> court mode + court-review

Dialectic remains important, but it is no longer the default for every task.

## Artifacts Agora produces

Agora focuses on durable outputs, not conversation theater.

Common artifacts:
- clarification briefs
- grill transcripts
- doubt lists
- PRDs
- decision memos
- synthesis memos
- minority reports
- assumption audits
- court reviews

## Philosophy-to-workflow mapping

- Socrates -> clarification and framing
- Hegel -> synthesis when contradiction is productive
- Descartes -> epistemic verification and doubt
- Nietzsche -> genealogy, value conflict, category critique
- Wittgenstein -> semantic and interface clarity
- Spinoza -> first-principles system reasoning
- Kant -> coherence, user respect, normative review

## Why this is an overlay

Agora does not ask users to abandon their existing workflow.
It adds supervised judgment where general-purpose agents are weakest:
- framing the real problem
- keeping disagreement visible
- deciding under uncertainty
- reviewing claims before execution
- separating roles in governance-heavy decisions

## Current state

Agora v2.3.1 is the current release of the skill-first workflow registry direction.
It includes the v2.3 workflow registry plus the deployment/status refresh for Claude Code, Codex, and skills.sh URL installation.
The repo now provides:
- reusable core skills
- modes documented as enum-like judgment settings
- workflow registry entries with required artifacts
- low-friction commands
- revised agent prompts oriented around artifacts and supervision

## Local reinstall status

Verified on 2026-05-06:
- Codex local source clone updated to `origin/main`.
- `~/.agents/skills` was refreshed from `skills/core/*`.
- New callable skills `cartesian-grill`, `prd-from-requirements`, and `tdd-subagent-implementation` are linked locally.
- Former callable overlay links `dialectic`, `skeptic`, `genealogy`, and `court` were removed from `~/.agents/skills`.

## Registry status

- Claude Code: `malleus35/agora` marketplace registration succeeded, and `agora@malleus35-agora` is ready for the v2.3.1 metadata release.
- Codex plugin marketplace: `malleus35/agora` marketplace registration succeeded.
- skills.sh CLI: URL-based discovery is verified with `npx skills add https://github.com/malleus35/agora --skill agora --list`; the expected install form is `npx skills add https://github.com/malleus35/agora --skill agora`.

## Documentation

- `docs/philosophy.md` — philosophy-to-workflow map
- `docs/modes.md` — mode enum definitions
- `docs/workflows.md` — workflow registry
- `docs/PRD-v3.md` — v2.3 product requirements
- `docs/recipes.md` — scenario-based usage recipes
- `docs/install-claude-code.md` — Claude Code install guide
- `docs/README.codex.md` — Codex instruction-based install guide
- `docs/examples/` — example artifacts and command usage
- `mcp/recommended-servers.md` — optional MCP guidance for grounding and governance

## License

MIT
