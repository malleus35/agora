---
description: "Choose and run the right Agora reasoning workflow for the problem"
argument-hint: "[problem, decision, plan, or review request]"
allowed-tools: ["Task", "Read", "Write", "TodoRead", "TodoWrite"]
---

# Agora — Supervised Judgment Router

Agora is the main entrypoint for choosing the right reasoning workflow.
It is not only a dialectical debate launcher.

Use this command to decide whether the problem needs clarification, decision framing, skepticism, genealogy, court review, or dialectical synthesis.
Modes such as dialectic, skeptic, genealogy, and court are workflow settings, not callable skills.

## Routing logic

### If the request is vague
Route to clarification.

Output:
- Purpose
- Constraints
- Success criteria
- Unknowns
- Recommended next step

### If the request is a real decision fork
Route to:
1. frame-the-decision
2. compare-options
3. decision-memo
4. minority-report if unresolved objections remain

### If the request is open-ended ideation or strategic reframing
Route to dialectic mode.
Use Hegelian synthesis only when contradiction is genuinely productive.
Do not force dialectic on straightforward tasks.

### If the request is verification, QA, security, or risk review
Route to skeptic mode and doubt-list.

### If the request is about hidden assumptions, inherited categories, or value conflict
Route to genealogy mode and assumption-audit.

### If the request is governance, approval, responsibility tracing, or multi-stakeholder review
Route to court mode and court-review.

## Small examples

```bash
/agora "I know we need an internal agent workflow, but I don't know what the actual decision is yet."
# -> clarify-goals

/agora "Should we keep a plugin-first strategy or split into a host-agnostic core?"
# -> frame-the-decision + compare-options

/agora "We need fresh strategic options for positioning Agora v2."
# -> dialectic mode

/agora "Before shipping, tell me what this proposal is assuming without evidence."
# -> skeptic mode + doubt-list

/agora "We need approval across strategist, operator, and oversight perspectives."
# -> court mode + court-review
```

## Completion rule

This command is complete only when the selected workflow is explicit and justified.
