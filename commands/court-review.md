---
description: "Run a governance review across strategist, operator, censor, historian, and sovereign perspectives"
argument-hint: "[proposal, release, or policy to review]"
allowed-tools: ["Read", "Write"]
---

# /court-review — Governance Workflow

Use this command when a proposal needs separated approval perspectives instead of one blended summary.

## Purpose

Produce a court review with:
- strategist
- operator
- censor
- historian
- sovereign verdict

## Output artifact

```markdown
## Court Review

### Strategist
- ...

### Operator
- ...

### Censor
- ...

### Historian
- ...

### Sovereign Verdict
- Approve / Approve with conditions / Reject
- Conditions: ...
- Owner: ...
```

## Example

```bash
/court-review "Review whether Agora v2 is ready for a public positioning update"
```
