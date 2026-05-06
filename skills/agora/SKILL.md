---
name: agora
description: |
  Entry skill for Agora. Use when you want Agora's judgment workflows but do not
  remember the exact skill name yet. Routes to the smallest sufficient workflow
  and keeps workflow phases connected when host skill chaining is unreliable.
version: 0.2.0
---

# Agora

## Purpose

This is the umbrella entrypoint skill for Agora.
Use it when you know you want Agora's reasoning style, but you do not want to remember the exact skill name first.

Agora is the single primary public entrypoint. Other core skills remain
available for direct advanced use, but ordinary users should be able to start
with `agora` and let it choose the workflow.

## Concepts

- core skill: reusable procedure or artifact generator
- mode: enum-like judgment posture, not a callable skill
- workflow: ordered skill sequence with fallback, stop condition, and artifact
- artifact: required durable output proving the workflow completed

Modes are documented in `docs/modes.md`.
Workflow registry entries are documented in `docs/workflows.md`.

## Routing guide

### If the problem is vague
Use `clarify-goals`.

Expected artifact:
- clarification brief

### If the problem is a real decision fork
Use the `decide` workflow:
- `frame-the-decision`
- `compare-options`
- `decision-memo`
- `minority-report` if disagreement remains

Expected artifact:
- decision package

### If the problem is verification or release/risk review
Use the `plan-stress-test` workflow when the user wants pressure testing:
- `clarify-goals`
- `cartesian-grill`
- `doubt-list`
- `decision-memo` if a recommendation is ready

Use `doubt-list` directly when the user already has enough material for a batch verification artifact.

Expected artifact:
- grill transcript when interactive questioning is needed
- doubt list
- verification plan
- optional decision memo

### If the problem is about hidden assumptions or inherited categories
Use the `assumption-reframe` workflow:
- `clarify-goals`
- `assumption-audit`
- `decision-memo` if a recommendation is ready

Expected artifact:
- assumption audit

### If the problem needs explicit Hegelian synthesis
Use the `strategic-synthesis` workflow in `dialectic` mode:
- `clarify-goals`
- `steelman`
- `compare-options`
- `synthesis-memo`
- `decision-memo` if a decision is ready

Expected artifact:
- synthesis memo or deadlock report

### If the problem needs governance or separated approval roles
Use the `governance-approval` workflow in `court` mode:
- `clarify-goals`
- `court-review`
- `decision-memo` if a decision is ready

Expected artifact:
- court review

### If the problem needs fair disagreement before critique
Use `steelman`.

Expected artifact:
- strongest-form restatement

### If clear requirements need a PRD
Use the `prd-from-clear-requirements` workflow:
- `clarify-goals`
- `prd-from-requirements`
- `cartesian-grill` if the plan needs pressure before implementation

Expected artifact:
- PRD with tasks, subtasks, acceptance checks, and open questions

### If clear requirements are ready for implementation
Use the `implementation` workflow:
- `prd-from-requirements` if no PRD exists yet
- `tdd-subagent-implementation`

Expected artifact:
- TDD subagent implementation report

## Workflow registry

When routing to a workflow:
1. Name the selected workflow.
2. Execute each phase in order.
3. For each phase, use the corresponding Agora core skill if available.
4. If the host does not load that skill, inline the minimum procedure from that skill's contract.
5. Do not stop after phase 1 unless the workflow says clarification is the final artifact.
6. Finish only when the workflow's artifact requirement is satisfied.

### plan-stress-test

```yaml
workflow: plan-stress-test
trigger:
  - 사용자가 계획, 설계, PRD, 전략을 검증하고 싶어함
  - "이게 맞는지 압박해줘", "grill 해줘", "위험을 찾아줘"
mode: skeptic
phases:
  1: clarify-goals
  2: cartesian-grill
  3: doubt-list
  4: decision-memo
fallback:
  - cartesian-grill skill이 로드되지 않으면 agora가 한 질문씩 직접 수행
stop_condition:
  - 검증 가능한 doubt list가 나왔거나
  - blocking ambiguity가 드러났거나
  - decision memo 작성이 가능해졌을 때
artifact:
  - grill transcript
  - doubt list
  - optional decision memo
```

See `docs/workflows.md` for the full registry.

## Recommended starter set

If you are installing Agora on a host with skill discovery, the smallest useful starter set is:
- `agora`
- `clarify-goals`
- `cartesian-grill`
- `doubt-list`
- `court-review`
- `decision-memo`

Modes such as `dialectic`, `skeptic`, `genealogy`, and `court` are not installed as skills.

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
