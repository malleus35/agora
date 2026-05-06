---
name: prd-from-requirements
description: |
  Convert clear requirements into a PRD with small tasks and subtasks. Use only
  after the goal, constraints, and success criteria are sufficiently defined.
version: 0.1.0
---

# PRD from Requirements

## Purpose

Turn clear requirements into an implementation-ready product requirements
document.

This skill is not for discovering the goal. It starts after the requirements are
clear enough to plan.

## Activate when

Use this skill when:
- requirements are clearly stated
- success criteria are known
- the user wants a PRD or implementation breakdown
- the next useful artifact is tasks and subtasks rather than more ideation

## Do not use when

Skip this skill when:
- the real goal is still unclear; use `clarify-goals`
- options still need comparison; use `frame-the-decision` and `compare-options`
- the plan needs pressure before PRD creation; use `cartesian-grill`

## Required PRD sections

- problem statement
- target users or operators
- goals
- non-goals
- requirements
- constraints
- success criteria
- tasks
- subtasks
- acceptance checks
- risks and open questions

## Task decomposition rules

- Break implementation into tasks as small as practical.
- Each task should have an observable completion check.
- Each subtask should be independently reviewable.
- Put uncertain work into explicit open questions, not hidden assumptions.
- If a task needs TDD implementation, hand off to `tdd-subagent-implementation`.

## Output artifact

```markdown
## PRD

### Problem Statement
- ...

### Goals
- ...

### Non-Goals
- ...

### Requirements
- ...

### Constraints
- ...

### Success Criteria
- ...

### Tasks
1. Task: ...
   - Subtask: ...
   - Subtask: ...
   - Acceptance check: ...

### Risks and Open Questions
- ...

### Recommended Next Step
- ...
```

## Completion condition

This skill is complete only when a reviewer could turn the PRD into an
implementation plan without rediscovering the requirements.
