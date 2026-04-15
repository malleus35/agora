---
name: compare-options
description: |
  Compare concrete options using gains, losses, reversibility, risk categories,
  and recommendation constraints.
version: 0.1.0
---

# Compare Options

## Purpose

Judge options without pretending trade-offs do not exist.

## Activate when

Use this skill after a decision has been framed and 2-4 real options exist.

## Required comparison dimensions

For each option, assess:
- gains
- losses
- reversibility
- risk categories
- implementation burden
- dependency burden
- governance or approval burden if relevant

## Risk categories

Always consider:
- delivery risk
- technical risk
- adoption risk
- governance risk
- reputational risk

## Procedure

1. Compare the same dimensions for every option.
2. Make reversibility explicit.
3. Name what the recommendation is constrained by.
4. If no option is clearly dominant, say so and preserve dissent.

## Output artifact

```markdown
## Option Comparison

### Decision Question
- ...

### Option A
- Gains: ...
- Losses: ...
- Reversibility: ...
- Risks: ...

### Option B
- Gains: ...
- Losses: ...
- Reversibility: ...
- Risks: ...

### Recommendation
- ...

### Recommendation Constraints
- ...

### Residual Concerns
- ...
```

## Guardrails

- Do not compare options using different standards.
- Do not recommend an option without naming what makes it acceptable.
- Do not erase residual concerns for the sake of clean consensus.

## Completion condition

This skill is complete when the strongest reason for and against the recommendation is explicit.
