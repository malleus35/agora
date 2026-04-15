# Agora

> Agents generate options. Agora helps humans supervise judgment.

Agora is a skill-first overlay for supervised AI work.
It adds clarification, doubt, dissent, synthesis, and governance workflows to the host agent you already use.

You keep Claude Code, Hermes, OpenCode, Codex, or another host.
Agora adds reusable reasoning commands, durable judgment artifacts, and philosophical overlays when a problem needs more than raw generation.

## What changed in v2

Agora is no longer positioned as a debate harness first.
It is now an overlay that helps teams:
- clarify the real decision before acting
- preserve dissent instead of flattening it
- write doubt lists before trusting outputs
- surface hidden assumptions and inherited categories
- produce reviewable artifacts for human approval

Philosophy is methodology, not decoration.
Dialectic, skepticism, genealogy, and court review are practical workflows, not roleplay.

## Core skills vs overlays

### Core skills
Small reusable workflows that can be used independently:
- clarify-goals
- frame-the-decision
- compare-options
- doubt-list
- assumption-audit
- minority-report
- decision-memo
- court-review

### Overlays
Opinionated reasoning modes for problems that need a stronger worldview:
- dialectic — strategic synthesis and ideation
- skeptic — verification and risk review
- genealogy — assumption and value critique
- court — governance and approval structure

## Commands

Agora exposes small entrypoints so users can get value from one command without learning the whole system.

- `/agora "prompt"` — route to the right workflow
- `/clarify "prompt"` — extract purpose, constraints, success criteria, unknowns
- `/decide "prompt"` — structure a real fork and write a decision memo
- `/doubt "prompt"` — generate a Descartes-style doubt list and verification plan
- `/steelman "prompt"` — restate an opposing view in strongest form before critique
- `/assumption-audit "prompt"` — expose hidden premises, inherited categories, and value conflicts
- `/minority-report "prompt"` — preserve unresolved objections and revisit triggers
- `/court-review "prompt"` — separate strategist, operator, censor, historian, sovereign views

## Quick examples

```bash
/clarify "We need an internal agent harness, but I am not sure whether the first goal is reliability or collaboration."

/decide "Should our agent harness use a shared-spec overlay or a repo-per-agent strategy?"

/doubt "Review this release plan for hidden failure modes before we ship."

/agora "We have an architecture disagreement and need the right reasoning mode."
```

## How `/agora` routes work

- vague problem -> clarify-goals
- real decision fork -> frame-the-decision + compare-options
- open-ended ideation -> dialectic overlay
- verification / risk / pre-release review -> skeptic overlay + doubt-list
- governance / approval / responsibility separation -> court overlay + court-review

Dialectic remains important, but it is no longer the default for every task.

## Artifacts Agora produces

Agora focuses on durable outputs, not conversation theater.

Common artifacts:
- clarification briefs
- doubt lists
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

## Installation

```bash
# From marketplace (once published)
/plugin install agora

# From Git
/plugin marketplace add malleus35/agora
/plugin install agora
```

## Why this is an overlay

Agora does not ask users to abandon their existing workflow.
It adds supervised judgment where general-purpose agents are weakest:
- framing the real problem
- keeping disagreement visible
- deciding under uncertainty
- reviewing claims before execution
- separating roles in governance-heavy decisions

## Current state

Agora v2 is an in-repo restructuring in progress.
The repo now moves toward:
- reusable core skills
- explicit overlays
- low-friction commands
- revised agent prompts oriented around artifacts and supervision

## Documentation

- `docs/philosophy.md` — philosophy-to-workflow map
- `docs/recipes.md` — scenario-based usage recipes
- `docs/install-claude-code.md` — Claude Code install guide
- `docs/install-opencode.md` — OpenCode install guide
- `docs/examples/` — example artifacts and command usage
- `mcp/recommended-servers.md` — optional MCP guidance for grounding and governance

## License

MIT
