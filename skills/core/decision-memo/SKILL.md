---
name: decision-memo
description: |
  Produce a durable approval-friendly artifact summarizing the decision,
  rationale, assumptions, dissent, and review date.
version: 0.1.0
---

# Decision Memo

## Purpose

Turn a discussion into a durable decision artifact that a future reader can audit.

## Activate when

Use this skill after a real choice has been made or a recommendation is ready for approval.

## Required sections

- decision summary
- rationale
- assumptions
- dissent
- review date

## Output artifact

```markdown
## Decision Memo

### Decision Summary
- ...

### Rationale
- ...

### Assumptions
- ...

### Dissent / Residual Concerns
- ...

### Review Date or Revisit Trigger
- ...
```

## Guardrails

- Do not hide uncertainty.
- Do not omit assumptions just to make the decision look stronger.
- Do not collapse dissent into silence.

## Completion condition

Complete only when a reviewer could understand both the choice and the reasons it might need revisiting.
