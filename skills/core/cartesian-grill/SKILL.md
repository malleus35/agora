---
name: cartesian-grill
description: |
  Interrogate a plan, design, PRD, claim, or strategic proposal one question at
  a time until its assumptions are clear enough to verify.
version: 0.1.0
---

# Cartesian Grill

## Purpose

Turn vague confidence into clear, distinct, testable commitments.

This is an interactive Descartes-style interrogation skill. It is for the path
to clarity, not the final batch review artifact.

## Difference from doubt-list

`cartesian-grill` is a live questioning protocol.
doubt-list is a batch verification artifact.

Use `cartesian-grill` when the proposal still needs to be pressured through
one question at a time.

Use `doubt-list` when enough material exists to generate a complete doubt list,
verification actions, clarity gate, and release posture in one pass.

## Activate when

Use this skill when:
- the user wants a plan, design, PRD, release, or strategy grilled
- the work sounds plausible but its assumptions are not clear
- requirements are close to clear but need pressure before execution
- a decision depends on claims that have not been separated into fact, inference, preference, and guess

## Do not use when

Skip this skill when:
- the request is still too vague to question productively; use `clarify-goals`
- the user needs a batch risk artifact now; use `doubt-list`
- the disagreement is mainly about hidden categories; use `assumption-audit`

## Rules

- Ask one question at a time.
- For each question, explain why that question matters.
- If the likely answer is inferable from provided code, docs, repo state, or prior evidence, inspect that evidence before asking.
- Classify each important answer as Fact / Inference / Preference / Guess.
- Do not accept vague agreement as clarity.
- If an answer is ambiguous, ask the next question against that ambiguity before moving on.
- Convert unresolved doubts into verification actions.

## Procedure

### Step 1 - State the object under interrogation
Name the exact plan, design, PRD, claim, or strategy being grilled.

### Step 2 - Ask the first blocking question
Start with the question most likely to change the outcome.

### Step 3 - Classify the answer
Mark the answer as:
- Fact
- Inference
- Preference
- Guess

### Step 4 - Continue until a gate is reached
Continue one question at a time until one of these is true:
- the plan is clear enough to hand off to `doubt-list`
- a blocking ambiguity requires user decision
- the plan should be rejected or reframed before more review

### Step 5 - Produce the grill transcript
Summarize only the questions that changed the judgment.

## Output artifact

```markdown
## Cartesian Grill

### Object of Interrogation
- ...

### Question Trail
- Question: ...
- Why it matters: ...
- Answer: ...
- Classification: Fact / Inference / Preference / Guess

### Clear and Distinct Commitments
- ...

### Remaining Doubts
- Doubt: ...
- Verification action: ...

### Clarity Gate
- Clear enough for `doubt-list` / Blocking ambiguity / Reframe before review

### Recommended Next Step
- ...
```

## Completion condition

This skill is complete only when the work has produced one of:
- a clear handoff to `doubt-list`
- a concrete verification backlog
- a blocking ambiguity that requires user decision
- a recommendation to reframe before further review
