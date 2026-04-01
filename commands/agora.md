---
description: "Start a dialectical debate session with philosopher agents"
argument-hint: "[topic or question to debate]"
allowed-tools: ["Task", "Read", "Write", "TodoRead", "TodoWrite"]
---

# Agora — Dialectical Debate Session

Start a multi-agent debate using philosopher agents. Summon **@socrates** to orchestrate.

## Available Agents

| Agent | Role | Summon |
|---|---|---|
| Socrates | CEO / Orchestrator | `@socrates` |
| Hegel | Planner / PM | `@hegel` |
| Wittgenstein | FE / Interface | `@wittgenstein` |
| Spinoza | BE / Infrastructure | `@spinoza` |
| Kant | Designer | `@kant` |
| Nietzsche | Marketer | `@nietzsche` |
| Descartes | QA | `@descartes` |

## Quick Start

**Topic provided:** "$ARGUMENTS"

If a topic was provided, summon @socrates with the topic to begin the debate.
If no topic was provided, explain the available agents and ask what the user wants to plan.

## Workflow

1. @socrates clarifies context (Purpose, Constraint, Success)
2. @hegel frames the debate agenda
3. Agents debate through Diverge -> Challenge -> Synthesize
4. @hegel writes the plan
5. @descartes verifies the result
