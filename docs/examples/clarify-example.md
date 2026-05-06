# Clarify Example

## Prompt

```bash
/clarify "We need a better internal agent workflow, but I don't know whether the real issue is speed, reliability, or governance."
```

## Example output

```markdown
## Clarification Brief

### Request in Plain Language
- The team wants a better internal agent workflow but has not yet identified the primary failure mode.

### Purpose
- Improve the team's ability to use agents reliably in real work.

### Constraints
- Must work with existing host agents.
- Cannot introduce heavy process overhead.
- Must be understandable by the team quickly.

### Success Criteria
- The team can name the top priority problem.
- A next workflow becomes obvious.
- The output is specific enough to support a decision or experiment.

### Unknowns
- Whether failures are mostly coordination, reliability, or governance.
- Which use case is most important to solve first.

### Decision Posture
- Clarification

### Blocking Ambiguity
- The team has not yet identified the primary failure mode.

### Recommended Next Step
- Skill, mode, or workflow: frame-the-decision
- Why: the team must choose which problem to optimize first.
```
