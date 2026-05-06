# Philosophy to Workflow Map

Agora v2 treats philosophy as workflow design.
These traditions are not decorative personas. They are practical reasoning modes that help humans supervise judgment.

## Socrates -> Clarification and supervised framing

Socrates is for situations where the team is moving too quickly from a vague desire to a concrete plan.
His job is not to supply answers, but to ask the questions that make the real decision visible.

### Workflow mapping
- core skill: `clarify-goals`
- common commands: `/clarify`, `/agora`
- output artifacts:
  - clarification brief
  - blocking ambiguity
  - recommended next workflow

### What Socratic clarification does
- separates purpose from preferred solution
- identifies constraints and success criteria
- names the ambiguity most likely to cause bad judgment
- routes the team to the next appropriate workflow

### Use when
- the request is vague
- the team is solving symptoms instead of the underlying problem
- multiple success criteria are being conflated
- debate is starting before the question is clear

### Do not use when
- the decision question is already concrete
- the task is straightforward execution on a settled plan

## Descartes -> Doubt, verification, and clarity gates

Descartes is for situations where confidence must be earned.
He converts claims into explicit checks and refuses to let rhetoric impersonate evidence.

### Workflow mapping
- core skill: `doubt-list`
- common commands: `/doubt`, `/agora`
- output artifacts:
  - doubt list
  - claim classification
  - verification checklist
  - release posture
  - clarity gate

### What Cartesian doubt does
- classifies statements as fact, inference, preference, or guess
- tests happy path, edge case, boundary, ambiguity, and evil-demon scenarios
- reviews reasoning artifacts, not only code
- produces pass / pass-with-conditions / revisions-needed / reject posture

### Use when
- review, QA, security, or release confidence matters
- the team is making strong claims without enough evidence
- the consequences of error are high

### Do not use when
- the team is still in fragile first-round ideation
- the real problem is lack of framing rather than lack of verification

## Hegel -> Dialectic and synthesis

Hegel is for cases where contradiction is productive.
He should not dominate every workflow. He is most useful when two strong positions exist and a higher-order synthesis may produce a better path.

### Workflow mapping
- mode: `dialectic`
- related core skills:
  - `frame-the-decision`
  - `compare-options`
  - `synthesis-memo`
  - `decision-memo`
- common commands: `/agora`
- output artifacts:
  - synthesis memo
  - decision memo
  - deadlock report

### What Hegelian synthesis does
- identifies the real contradiction
- forces positions into explicit tension
- preserves strengths from opposed views
- seeks a synthesis that is better than compromise

### Use when
- open-ended ideation needs structure
- strategic reframing is needed
- two strong positions exist and a synthesis may be useful

### Do not use when
- a simple option comparison is enough
- the task is narrow debugging or straightforward implementation
- novelty would distract from sufficiency

## Nietzsche -> Genealogy, category critique, and revaluation

Nietzsche is for cases where the team may be trapped inside inherited language or values.
He exposes hidden assumptions and asks who benefits from the current frame.

### Workflow mapping
- mode: `genealogy`
- core skill: `assumption-audit`
- common commands: `/assumption-audit`, `/agora`
- output artifacts:
  - assumption audit
  - inherited category map
  - value conflict notes
  - revaluation proposal

### What Nietzschean genealogy does
- surfaces hidden premises and inherited categories
- distinguishes necessity from convenience disguised as principle
- reveals value conflict beneath technical disagreement
- reframes the problem so the team stops defending the wrong category

### Use when
- definitions feel inherited rather than chosen
- the team may be solving the wrong problem
- value conflict is distorting judgment
- the product category itself needs critique

### Do not use when
- the main task is evidence verification rather than frame critique
- the issue is already well-scoped and operationally concrete

## Court / statecraft -> Governance and approval structure

The court mode turns multi-stakeholder review into a separated workflow.
It is for proposals that require distinct responsibility-bearing perspectives rather than one blended consensus paragraph.

### Workflow mapping
- mode: `court`
- core skill: `court-review`
- common commands: `/court-review`, `/agora`
- output artifacts:
  - court review
  - sovereign verdict
  - conditions for approval
  - ownership and accountability notes

### What court review does
- separates strategist, operator, censor, historian, and sovereign voices
- prevents governance concerns from being buried inside implementation talk
- makes approval conditions explicit
- preserves institutional memory and responsibility boundaries

### Use when
- approval requires multiple perspectives
- governance, legitimacy, or responsibility tracing matters
- strategic, operational, and oversight viewpoints must be separated

### Do not use when
- the issue is low-stakes and fully reversible
- a single technical owner can decide without governance overhead

## Supporting philosophers in v2

### Wittgenstein
- workflow role: terminology, interface framing, conceptual clarity
- supports commands, specs, UX language, and command naming
- strongest when the problem is semantic confusion or interface-language mismatch

### Spinoza
- workflow role: first-principles systems reasoning
- focuses on axioms, invariants, dependency structure, and failure-safe architecture
- strongest when architecture must follow explicit constraints rather than taste

### Kant
- workflow role: normative and coherence review
- checks universalizability, user respect, consistency, and principled design judgment
- strongest when a team needs to judge whether a solution is coherent, legible, and fair beyond trend

## Practical rule

Use the lightest workflow that produces the right artifact.
Do not invoke philosophy as theater.
Choose the mode that improves judgment.
