---
description: "Generate a Descartes-style doubt list and verification plan"
argument-hint: "[plan, proposal, release, claim, or implementation to doubt]"
allowed-tools: ["Read", "Write"]
---

# /doubt — Cartesian Review

Generate a doubt list before trusting a plan, claim, or implementation.

This command is for verification, not pessimism for its own sake.
It turns confidence into explicit checks.

## Purpose

Produce:
- claim classification
- happy path doubts
- edge case doubts
- boundary doubts
- ambiguity doubts
- evil demon scenarios
- verification actions
- release posture

## Command behavior

1. Name the object of review.
2. Classify important claims as Fact / Inference / Preference / Guess.
3. Generate doubts across all required categories.
4. Convert each serious doubt into a concrete verification step.
5. End with a clear proceed / proceed-with-conditions / do-not-proceed-yet posture.

## Output artifact

```markdown
## Doubt List

### Object of Review
- ...

### Claim Classification
- Claim: ... -> Fact / Inference / Preference / Guess

### Happy Path Doubts
- Doubt: ...
- Verification: ...

### Edge Case Doubts
- ...

### Boundary Doubts
- ...

### Ambiguity Doubts
- ...

### Evil Demon Scenarios
- ...

### Release Posture
- Proceed / Proceed with conditions / Do not proceed yet
```

## Examples

```bash
/doubt "Review this release checklist before we ship the plugin"

/doubt "Stress-test this architecture decision memo and tell me what still needs verification"
```

## Completion rule

This command is complete only when the next verification actions are explicit.
