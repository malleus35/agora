---
name: frame-the-decision
description: |
  Turn a vague discussion into a concrete decision fork with explicit options,
  stakes, constraints, and the real source of difficulty.
version: 0.1.0
---

# Frame the Decision

## Purpose

A discussion becomes actionable only when the real fork is named.
This skill turns blur into a decision surface.

## Activate when

Use this skill when:
- a team keeps circling without naming the actual choice
- multiple issues are blended together
- people argue about solutions without agreeing on the decision question
- a decision memo or option comparison is needed next

## Output requirements

Produce:
- one decision question
- 2-4 concrete options
- why this decision is hard
- constraints that matter
- what happens if the team delays
- handoff to compare-options

## Procedure

1. State the decision in one sentence.
2. Separate the decision from surrounding context and adjacent issues.
3. Keep option count between 2 and 4.
4. Name the difficulty: trade-off, uncertainty, politics, reversibility, evidence gap.
5. Record what would make the decision easier.

## Output artifact

```markdown
## Decision Frame

### Decision Question
- ...

### Why This Decision Exists
- ...

### Options
- Option A: ...
- Option B: ...
- Option C: ...

### Why This Is Hard
- ...

### Constraints
- ...

### Cost of Delay
- ...

### Recommended Next Step
- compare-options
```

## Guardrails

- Do not write a fake binary if more than two credible options exist.
- Do not allow more than four options unless the user explicitly needs a landscape scan.
- Do not hide the hard trade-off behind vague wording.

## Completion condition

Complete only when a reviewer could compare the options without asking what the actual decision is.
