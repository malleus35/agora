# Agora Workflow Registry

The workflow registry is Agora's internal routing table.

It tells the `agora` entrypoint which ordered skill sequence to run, which mode
to apply, when to stop, and which artifacts must exist before the workflow is
complete.

## Registry fields

- `workflow`: stable workflow id
- `trigger`: phrases, situations, or user intents that activate the workflow
- `mode`: one of the documented mode enum values in `docs/modes.md`
- `phases`: ordered skill sequence
- `fallback`: what `agora` must do if the host does not chain or load a phase skill
- `stop_condition`: observable conditions that end the workflow
- `artifact`: required final outputs

Artifact fields are required. If a workflow has no artifact, it is not ready for
the registry because a future reviewer cannot tell whether it completed.

## Workflows

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

```yaml
workflow: decide
trigger:
  - a real decision fork exists
  - the user asks which option to choose
mode: skeptic
phases:
  1: clarify-goals
  2: frame-the-decision
  3: compare-options
  4: decision-memo
  5: minority-report
fallback:
  - if a phase skill is unavailable, agora performs the minimum procedure documented in that skill
stop_condition:
  - decision memo exists
  - unresolved dissent is either resolved or preserved
artifact:
  - decision frame
  - option comparison
  - decision memo
  - optional minority report
```

```yaml
workflow: strategic-synthesis
trigger:
  - two or more strong positions need structured confrontation
  - the user asks for synthesis rather than a simple choice
mode: dialectic
phases:
  1: clarify-goals
  2: steelman
  3: compare-options
  4: synthesis-memo
  5: decision-memo
fallback:
  - if no real synthesis exists, hand off to compare-options and preserve dissent
stop_condition:
  - synthesis memo exists
  - or explicit deadlock is recorded
artifact:
  - strongest-form restatement
  - synthesis memo or deadlock report
  - optional decision memo
```

```yaml
workflow: assumption-reframe
trigger:
  - hidden assumptions or inherited categories may be driving the work
  - the user asks whether the team is solving the wrong problem
mode: genealogy
phases:
  1: clarify-goals
  2: assumption-audit
  3: decision-memo
fallback:
  - if assumption-audit is unavailable, agora must still separate explicit assumptions, hidden assumptions, inherited categories, and value conflicts
stop_condition:
  - chosen assumptions and inherited assumptions are visibly separated
artifact:
  - assumption audit
  - optional decision memo
```

```yaml
workflow: governance-approval
trigger:
  - approval, ownership, or responsibility tracing matters
  - several stakeholder perspectives must remain separate
mode: court
phases:
  1: clarify-goals
  2: court-review
  3: decision-memo
fallback:
  - if court-review is unavailable, agora must still separate strategist, operator, censor, historian, and sovereign verdict
stop_condition:
  - verdict, owner, and approval conditions are explicit
artifact:
  - court review
  - decision memo
```

```yaml
workflow: prd-from-clear-requirements
trigger:
  - requirements are already clear
  - the user asks for PRD, tasks, subtasks, or implementation breakdown
mode: skeptic
phases:
  1: clarify-goals
  2: prd-from-requirements
  3: cartesian-grill
fallback:
  - if requirements are not clear, stop after clarify-goals and ask for the blocking decision
stop_condition:
  - PRD contains tasks, subtasks, acceptance checks, and open questions
artifact:
  - PRD
  - optional grill transcript
```

```yaml
workflow: implementation
trigger:
  - the user asks Agora to implement after requirements are clear
  - a PRD, task list, or decision memo is ready for code
mode: skeptic
phases:
  1: prd-from-requirements
  2: tdd-subagent-implementation
fallback:
  - if subagents are unavailable, perform inline review and mark independent review unavailable
stop_condition:
  - RED and GREEN evidence exist
  - subagent or inline review evidence exists
artifact:
  - TDD subagent implementation report
```
