---
description: "Run Hegelian dialectic mode for ideation, contradiction, and synthesis"
argument-hint: "[open-ended problem, strategic tension, or opposed positions]"
allowed-tools: ["Read", "Write"]
---

# /dialectic — Hegelian Synthesis Workflow

Use this command when contradiction is productive and a higher-order synthesis may be better than a simple comparison.

## Purpose

Route explicitly into dialectic mode.
This is the direct command for Hegelian mode when you already know you want:
- ideation through tension
- strategic reframing
- thesis vs antithesis confrontation
- synthesis memo or explicit deadlock report

## Workflow

1. Name the contradiction precisely.
2. Restate thesis and antithesis in strong form.
3. Identify what each side is protecting.
4. Test whether a true synthesis exists.
5. End in one of:
   - synthesis memo
   - decision memo
   - minority report
   - deadlock report

## When to use

- open-ended ideation
- strategic reframing
- two strong positions exist and synthesis may help
- the team is stuck in a productive contradiction

## When not to use

- the problem is still vague -> use `/clarify`
- the issue is a simple fork -> use `/decide`
- the task is verification/release review -> use `/doubt`
- governance/approval is the main concern -> use `/court-review`

## Output artifact

```markdown
## Dialectic Result

### Thesis
- ...

### Antithesis
- ...

### Preserved Strengths
- ...

### Synthesis or Deadlock
- ...

### Next Step
- ...
```

## Examples

```bash
/dialectic "Should Agora optimize for host-specific excellence or cross-host abstraction first?"

/dialectic "We need synthesis between governance rigor and low-friction adoption"
```
