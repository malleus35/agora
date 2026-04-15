---
description: "Clarify a vague request into purpose, constraints, success criteria, and unknowns"
argument-hint: "[problem, request, or idea to clarify]"
allowed-tools: ["Read", "Write"]
---

# /clarify — Clarification Brief

Turn a vague prompt into an actionable brief before planning or implementation.

Use this command when the user seems to know they need something, but the real objective, constraints, or success conditions are still blurry.

## Purpose

Extract:
- purpose
- constraints
- success criteria
- unknowns
- the next recommended workflow

## Command behavior

1. Restate the request in plain language.
2. Separate the goal from any prematurely chosen solution.
3. Produce a clarification brief.
4. If the request is still too ambiguous, say what must be answered before proceeding.
5. Recommend the next Agora skill or overlay.

## Output artifact

```markdown
## Clarification Brief

### Request in Plain Language
- ...

### Purpose
- ...

### Constraints
- ...

### Success Criteria
- ...

### Unknowns
- ...

### Decision Posture
- Clarification / Decision / Ideation / Review / Governance

### Recommended Next Step
- ...
```

## Examples

```bash
/clarify "We need a better agent workflow for our team, but I am not sure if the real issue is reliability, coordination, or governance."

/clarify "Help me turn this rough research direction into a concrete project question."
```

## Completion rule

This command is complete only when a downstream skill or workflow becomes obvious.
