---
name: agora
description: |
  Entry skill for Agora. Use when you want Agora's judgment workflows but do not
  remember the exact skill name yet. Routes to the smallest sufficient workflow.
version: 0.1.0
---

# Agora

## Purpose

This is the umbrella entrypoint skill for Agora.
Use it when you know you want Agora's reasoning style, but you do not want to remember the exact skill name first.

## Routing guide

### If the problem is vague
Use `clarify-goals`.

Expected artifact:
- clarification brief

### If the problem is a real decision fork
Use:
- `frame-the-decision`
- `compare-options`
- `decision-memo`
- `minority-report` if disagreement remains

Expected artifact:
- decision package

### If the problem is verification or release/risk review
Use `doubt-list`.

Expected artifact:
- doubt list
- verification plan

### If the problem is about hidden assumptions or inherited categories
Use `assumption-audit`.

Expected artifact:
- assumption audit

### If the problem needs explicit Hegelian synthesis
Use `dialectic`.

Expected artifact:
- synthesis memo or deadlock report

### If the problem needs governance or separated approval roles
Use `court-review`.

Expected artifact:
- court review

### If the problem needs fair disagreement before critique
Use `steelman`.

Expected artifact:
- strongest-form restatement

## Recommended starter set

If you are installing Agora on a host with skill discovery, the smallest useful starter set is:
- `agora`
- `clarify-goals`
- `doubt-list`
- `court-review`
- `dialectic`

## How to use

1. Load `agora`
2. State the task in plain language
3. Ask Agora which workflow is the right one
4. Continue with the routed skill

Example:

```text
Use Agora to help me with this problem.
We need a better internal agent workflow, but I do not know whether the issue is reliability, governance, or collaboration.
```

Expected routing:
- `clarify-goals`

## Completion condition

This skill is complete when the next specific Agora skill is obvious.
