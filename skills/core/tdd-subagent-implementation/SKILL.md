---
name: tdd-subagent-implementation
description: |
  Execute implementation work with mandatory TDD and mandatory subagent review
  for tests, code, and logic when the host supports subagents.
version: 0.1.0
---

# TDD Subagent Implementation

## Purpose

Provide Agora's implementation-phase discipline when a PRD, decision memo, or
task list is ready to become code.

Recommended design decision: keep this as a dedicated core skill instead of
copying TDD and subagent rules into every implementation-related skill. One
implementation gate is easier to audit and update.

## Activate when

Use this skill when:
- requirements are clear enough to implement
- a PRD or task breakdown exists
- code, tests, or behavior-changing documentation will be changed
- the user asks Agora to move from judgment into implementation

## Required rule

NO PRODUCTION CODE WITHOUT A FAILING TEST FIRST.

## Subagent rule

When subagents are available:
- use a subagent to review the failing test before implementation
- use a subagent to review code or logic after GREEN
- use a subagent to review whether verification actually covers the requirement

When subagents are not available:
- say that subagent review is unavailable
- perform the same review checklist inline
- do not claim independent review happened

## Procedure

### Step 1 - Confirm implementation object
Name the PRD, task, decision memo, or requirement being implemented.

### Step 2 - Create the RED test
Write the smallest failing test that proves the missing behavior.
Run it and confirm the failure is due to the missing feature, not typo or setup.

### Step 3 - Review RED
Use a subagent for test review when available.
Confirm the test asserts real behavior and is not tautological.

### Step 4 - Implement GREEN
Write the minimum production change needed to pass.

### Step 5 - Verify GREEN
Run the targeted test and relevant broader checks.

### Step 6 - Review code and logic
Use a subagent for code or logic review when available.
Check scope, correctness, and requirement coverage.

### Step 7 - Refactor only after GREEN
Clean up without changing behavior. Re-run verification.

## Output artifact

```markdown
## TDD Subagent Implementation Report

### Implementation Object
- ...

### RED Evidence
- Test:
- Failure:

### GREEN Evidence
- Test:
- Result:

### Subagent Review
- Test review: completed / unavailable
- Code review: completed / unavailable
- Coverage review: completed / unavailable

### Residual Risk
- ...
```

## Completion condition

This skill is complete only when the failing test was observed, GREEN was
verified, and subagent or inline review evidence is recorded.
