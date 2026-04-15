# Agora PRD v2 — Skill-First Overlay for Supervised Collective Judgment

> For Hermes: use this document as the source of truth when planning or implementing Agora v2.

## 1. Why v2 exists

Agora v1 proved that philosopher-driven ideation can produce meaningful results, especially in open-ended exploration.

But v1 is still positioned too much like a standalone debate harness:
- it looks like a replacement workflow, not an overlay
- it is strong on worldview, but weaker on low-friction repeated use
- Hegelian dialectics are productive for ideation, but too heavy as the default for every problem
- adoption is limited if users feel they must abandon their existing agent workflow

Agora v2 redefines the project as:

**A skill-first overlay that adds philosophical reasoning workflows to existing agents.**

This means:
- users keep Claude Code / Hermes / OpenCode / Codex / other host agents
- Agora provides reusable judgment skills, commands, and overlays
- philosophy becomes a practical workflow layer, not roleplay
- the core artifact is not “debate for its own sake” but supervised decision quality

---

## 2. Product thesis

### Core thesis

Agents generate options.
Agora helps humans supervise judgment.

### Product definition

Agora is a plugin-distributed, skill-first overlay for supervised AI work.
It adds clarification, doubt, dissent, synthesis, and governance artifacts to existing coding, research, and planning workflows.

### Design goals

1. Lower adoption friction
- No replacement of the host agent
- Small commands and skills must be usable independently
- The user should get value from one skill before learning the whole system

2. Preserve Agora’s unique worldview
- Philosophy is methodology, not decoration
- Different traditions become different reasoning overlays
- Conflict, dissent, and supervision remain first-class concepts

3. Produce durable artifacts
- decision memos
- minority reports
- doubt lists
- synthesis records
- court reviews
- assumption audits

4. Allow multiple reasoning modes
- dialectic for ideation and strategic synthesis
- skeptic for verification and risk review
- genealogy for assumption and value criticism
- court for role-based governance and approval

---

## 3. User problem

### Problem statement

Existing agent tools are strong at generation but weak at supervised judgment.
Users can get answers, plans, and code quickly, but they often lack:
- clear framing of the real decision
- preserved dissent
- structured doubt
- explicit hidden assumptions
- reviewable reasoning artifacts
- governance-friendly outputs for human approval

### Why existing tools are not enough

1. General-purpose coding agents optimize for execution speed, not judgment quality
2. Multi-agent harnesses often over-emphasize orchestration and under-emphasize artifacts
3. Debate-only structures can become theatrical when they are not tied to decision outputs
4. Users rarely switch core tools, so adoption depends on overlays, not replacements

---

## 4. Product strategy

Agora v2 will use a three-layer structure.

### Layer A — Core skills
Reusable, host-agnostic skills that anyone can use.

Examples:
- clarify-goals
- frame-the-decision
- steelman
- doubt-list
- compare-options
- assumption-audit
- minority-report
- synthesis-memo
- decision-memo
- court-review

### Layer B — Philosophical overlays
Opinionated reasoning modes that encode Agora’s worldview.

Examples:
- dialectic
- skeptic
- genealogy
- court

### Layer C — Host integration layer
Distribution and invocation through host-native commands and plugin structure.

Examples:
- Claude Code plugin commands
- explicit skill invocation entrypoints
- host-specific install docs
- optional MCP recommendations

---

## 5. v2 information architecture

## Target repository structure

```text
agora/
├── README.md
├── CLAUDE.md
├── commands/
│   ├── agora.md
│   ├── clarify.md
│   ├── decide.md
│   ├── doubt.md
│   ├── steelman.md
│   ├── minority-report.md
│   ├── assumption-audit.md
│   └── court-review.md
├── skills/
│   ├── core/
│   │   ├── clarify-goals/
│   │   │   └── SKILL.md
│   │   ├── frame-the-decision/
│   │   │   └── SKILL.md
│   │   ├── steelman/
│   │   │   └── SKILL.md
│   │   ├── doubt-list/
│   │   │   └── SKILL.md
│   │   ├── compare-options/
│   │   │   └── SKILL.md
│   │   ├── assumption-audit/
│   │   │   └── SKILL.md
│   │   ├── minority-report/
│   │   │   └── SKILL.md
│   │   ├── synthesis-memo/
│   │   │   └── SKILL.md
│   │   ├── decision-memo/
│   │   │   └── SKILL.md
│   │   └── court-review/
│   │       └── SKILL.md
│   └── overlays/
│       ├── dialectic/
│       │   └── SKILL.md
│       ├── skeptic/
│       │   └── SKILL.md
│       ├── genealogy/
│       │   └── SKILL.md
│       └── court/
│           └── SKILL.md
├── agents/
│   ├── socrates.md
│   ├── hegel.md
│   ├── wittgenstein.md
│   ├── spinoza.md
│   ├── kant.md
│   ├── nietzsche.md
│   └── descartes.md
├── docs/
│   ├── PRD.md
│   ├── PRD-v2.md
│   ├── philosophy.md
│   ├── recipes.md
│   ├── install-claude-code.md
│   ├── install-opencode.md
│   └── examples/
└── mcp/
    └── recommended-servers.md
```

---

## 6. Core commands in v2

The command layer must expose small, independent entrypoints.

### /agora
Purpose:
- main entrypoint
- choose the right overlay or core skill based on the problem

Expected behavior:
- if the request is vague -> run clarify-goals
- if the request is a decision -> run frame-the-decision + compare-options
- if the request is ideation -> offer dialectic mode
- if the request is risk/review -> offer skeptic mode
- if the request is governance/approval -> offer court mode

### /clarify
Purpose:
- extract purpose, constraints, success criteria, and unknowns

### /decide
Purpose:
- structure a real fork
- compare options
- create a decision memo
- preserve unresolved concerns

### /doubt
Purpose:
- generate a Descartes-style doubt list
- identify what must be verified before execution

### /steelman
Purpose:
- restate opposing views in strongest form before critique

### /minority-report
Purpose:
- capture unresolved objections, discarded alternatives, revisit triggers

### /assumption-audit
Purpose:
- expose hidden premises and inherited categories
- especially useful for Nietzsche/genealogy workflows

### /court-review
Purpose:
- run a governance review across strategist / operator / censor / historian / sovereign perspectives

---

## 7. Philosophical overlays in v2

### Overlay 1: Dialectic
Use when:
- open-ended ideation
- strategic reframing
- two strong positions exist and a synthesis may be useful

Strength:
- produces novel synthesis
- strong for strategy and exploration

Weakness:
- too heavy for narrow debugging or straightforward implementation
- can bias toward novelty over practical sufficiency

Rule:
- never the default for every problem
- explicit mode, not implicit global behavior

### Overlay 2: Skeptic
Use when:
- verification
- QA
- security review
- pre-release checks
- confidence is low or consequences are high

Strength:
- directly aligned with current agent reliability and security discourse
- highly practical and adoptable

### Overlay 3: Genealogy
Use when:
- hidden assumptions must be surfaced
- category definitions need critique
- inherited criteria are distorting the problem
- the team may be solving the wrong problem

Strength:
- distinctive Agora worldview
- best place to evolve Nietzsche beyond “marketer”

### Overlay 4: Court
Use when:
- multi-stakeholder approval is needed
- governance, role separation, or responsibility tracing matters
- strategic, operational, and oversight perspectives must be separated

Strength:
- directly connects philosophy/history/statecraft to practical AI workflows
- strong differentiation from generic agent tooling

---

## 8. Subagent evolution plan

Agora v1 subagents are strong as symbolic roles, but v2 must make them more operational.

### Socrates — keep, but narrow to facilitation
Current strength:
- excellent clarification structure

v2 improvement:
- make Socrates the dispatcher of core skills and overlays
- reduce emphasis on “CEO” branding
- increase emphasis on “facilitator of supervised judgment”

Required updates:
- route to core skills before routing to personalities
- choose overlay intentionally
- enforce artifact creation

### Hegel — keep, but move from universal planner to dialectic specialist
Current strength:
- strong planning and synthesis structure

v2 improvement:
- use Hegel when dialectical planning is actually appropriate
- do not let Hegel dominate all tasks by default
- add explicit anti-pattern note: do not force novelty when a conventional solution is sufficient

Required updates:
- add “when not to use dialectics” section
- add fallback to compare-options when synthesis is not needed
- add task decomposition templates that do not require thesis/antithesis in every case

### Descartes — expand from QA lead to epistemic verifier
Current strength:
- doubt list and verification framing are excellent

v2 improvement:
- broaden Descartes from implementation QA to reasoning QA
- validate claims, assumptions, evidence, and ambiguity

Required updates:
- verify whether outputs are fact / inference / preference / guess
- add artifact review mode
- add “clarity gate” for decision memos and minority reports

### Nietzsche — redefine from marketer to genealogist / value critic
Current problem:
- “marketer” is too narrow and undersells Nietzsche’s philosophical value

v2 improvement:
- reposition as critic of inherited assumptions and categories
- use for assumption audit, category reframing, and value conflict discovery

Required updates:
- replace default marketing-first posture with genealogy-first posture
- keep messaging/copy as a secondary use case, not the primary identity
- add prompts for value genealogy, revaluation, and category rupture

### Wittgenstein — keep, but clarify semantic role
v2 improvement:
- use for interface framing, terminology, conceptual clarity in UX and language
- can also support specification language and user-facing prompt wording

### Spinoza — keep, but align with first-principles systems reasoning
v2 improvement:
- system axioms
- dependency structure
- invariants
- failure-safe architecture

### Kant — keep, but consider expansion into normative review
v2 improvement:
- not only aesthetics
- can review coherence, user respect, and universalizable interaction principles

---

## 9. Implementation plan (tasks and subtasks)

# Agora v2 Implementation Plan

> For Hermes: implement this plan task-by-task. Keep tasks bite-sized. Preserve repo consistency. Prefer documentation-first changes before any major behavioral change.

**Goal:** Transform Agora from a philosopher-role debate harness into a skill-first overlay for supervised collective judgment.

**Architecture:** Separate reusable core skills from opinionated philosophical overlays, expose low-friction commands, and evolve subagents from character-role prompts into workflow-capable reasoning operators. Keep the existing repo and plugin identity, but change the product surface from “harness replacement” to “overlay augmentation.”

**Tech Stack:** Markdown docs, Claude Code plugin command files, agent prompt files, skill files, repo-local documentation.

---

### Phase 0: Documentation foundation

### Task 0.1: Create PRD v2
**Objective:** Add a second product document defining the v2 shift.

**Files:**
- Create: `docs/PRD-v2.md`

**Subtasks:**
- [x] Write the v2 problem statement
- [x] Write the v2 product thesis
- [x] Define core skills vs overlays
- [x] Define command expansion
- [x] Define subagent evolution plan
- [x] Add implementation task breakdown

### Task 0.2: Add philosophy-to-workflow map document
**Objective:** Explain how each philosophical tradition maps to a practical workflow.

**Files:**
- Create: `docs/philosophy.md`

**Subtasks:**
- [ ] Write Socratic clarification mapping
- [ ] Write Cartesian doubt mapping
- [ ] Write Hegelian synthesis mapping
- [ ] Write Nietzschean genealogy mapping
- [ ] Write court/statecraft mapping
- [ ] Add “when to use / when not to use” for each

### Task 0.3: Add recipes document
**Objective:** Show concrete usage patterns for common scenarios.

**Files:**
- Create: `docs/recipes.md`

**Subtasks:**
- [ ] Add recipe for product decision
- [ ] Add recipe for debugging review
- [ ] Add recipe for architecture disagreement
- [ ] Add recipe for writing/positioning
- [ ] Add recipe for governance/approval review

---

### Phase 1: Repository restructuring for skill-first design

### Task 1.1: Create `skills/core/` directory structure
**Objective:** Prepare the repo for reusable host-agnostic skill modules.

**Files:**
- Create: `skills/core/clarify-goals/SKILL.md`
- Create: `skills/core/frame-the-decision/SKILL.md`
- Create: `skills/core/steelman/SKILL.md`
- Create: `skills/core/doubt-list/SKILL.md`
- Create: `skills/core/compare-options/SKILL.md`
- Create: `skills/core/assumption-audit/SKILL.md`
- Create: `skills/core/minority-report/SKILL.md`
- Create: `skills/core/synthesis-memo/SKILL.md`
- Create: `skills/core/decision-memo/SKILL.md`
- Create: `skills/core/court-review/SKILL.md`

**Subtasks:**
- [ ] Create the directory tree
- [ ] Standardize YAML frontmatter for all skills
- [ ] Use a consistent activation rule format
- [ ] Define input/output artifact expectations in every skill
- [ ] Define failure modes and escalation points in every skill

### Task 1.2: Create `skills/overlays/` directory structure
**Objective:** Separate worldview-heavy overlays from core skills.

**Files:**
- Create: `skills/overlays/dialectic/SKILL.md`
- Create: `skills/overlays/skeptic/SKILL.md`
- Create: `skills/overlays/genealogy/SKILL.md`
- Create: `skills/overlays/court/SKILL.md`

**Subtasks:**
- [ ] Define overlay purpose
- [ ] Define activation conditions
- [ ] Define anti-patterns
- [ ] Define recommended paired core skills
- [ ] Define expected artifact output

### Task 1.3: Deprecate the single-protocol assumption
**Objective:** Stop treating dialectic as the universal default.

**Files:**
- Modify: `skills/agora-debate/SKILL.md`

**Subtasks:**
- [ ] Rewrite the intro so dialectic is one overlay, not the universal path
- [ ] Add explicit “best for ideation / not for every task” note
- [ ] Add references to skeptic, genealogy, and court overlays
- [ ] Add command-routing guidance for mode selection

---

### Phase 2: Command expansion

### Task 2.1: Keep `/agora`, redefine it as a router
**Objective:** Turn `/agora` into the main overlay entrypoint, not just a debate launcher.

**Files:**
- Modify: `commands/agora.md`

**Subtasks:**
- [ ] Rewrite command description
- [ ] Replace “start a dialectical debate session” framing with “choose and run a reasoning workflow” framing
- [ ] Add routing logic for vague request vs decision vs review vs governance
- [ ] Add small examples for each route

### Task 2.2: Add `/clarify`
**Objective:** Expose Socratic clarification as an independently useful command.

**Files:**
- Create: `commands/clarify.md`

**Subtasks:**
- [ ] Define command description
- [ ] Define purpose/constraint/success output
- [ ] Add examples for coding and research use
- [ ] Add completion artifact format

### Task 2.3: Add `/decide`
**Objective:** Expose structured decision workflows.

**Files:**
- Create: `commands/decide.md`

**Subtasks:**
- [ ] Define command description
- [ ] Route to frame-the-decision + compare-options + decision-memo
- [ ] Add optional minority-report step
- [ ] Add examples

### Task 2.4: Add `/doubt`
**Objective:** Expose Descartes-style skeptical review.

**Files:**
- Create: `commands/doubt.md`

**Subtasks:**
- [ ] Define command description
- [ ] Route to doubt-list
- [ ] Add claim verification mode
- [ ] Add implementation verification mode

### Task 2.5: Add `/steelman`
**Objective:** Make steel-manning independently usable.

**Files:**
- Create: `commands/steelman.md`

**Subtasks:**
- [ ] Define command description
- [ ] Add strongest-form artifact template
- [ ] Add option-comparison example
- [ ] Add policy disagreement example

### Task 2.6: Add `/minority-report`
**Objective:** Preserve unresolved dissent as a first-class artifact.

**Files:**
- Create: `commands/minority-report.md`

**Subtasks:**
- [ ] Define command description
- [ ] Add unresolved objections format
- [ ] Add revisit trigger format
- [ ] Add team-decision example

### Task 2.7: Add `/assumption-audit`
**Objective:** Expose Nietzsche/genealogy value critique as a reusable tool.

**Files:**
- Create: `commands/assumption-audit.md`

**Subtasks:**
- [ ] Define command description
- [ ] Add explicit-vs-hidden assumptions structure
- [ ] Add inherited category structure
- [ ] Add “what if the opposite were true?” section

### Task 2.8: Add `/court-review`
**Objective:** Expose statecraft/governance reasoning as a practical command.

**Files:**
- Create: `commands/court-review.md`

**Subtasks:**
- [ ] Define command description
- [ ] Define strategist/operator/censor/historian/sovereign outputs
- [ ] Add governance review example
- [ ] Add approval review example

---

### Phase 3: Core skills implementation

### Task 3.1: Implement `clarify-goals`
**Objective:** Add a reusable Socratic clarification skill.

**Files:**
- Create: `skills/core/clarify-goals/SKILL.md`

**Subtasks:**
- [ ] Define trigger conditions
- [ ] Define required questions
- [ ] Define output schema
- [ ] Define “do not proceed until clear” guardrail

### Task 3.2: Implement `frame-the-decision`
**Objective:** Turn vague discussions into concrete decision forks.

**Files:**
- Create: `skills/core/frame-the-decision/SKILL.md`

**Subtasks:**
- [ ] Define fork framing rules
- [ ] Define option count guidance
- [ ] Define “what makes this decision hard?” section
- [ ] Define handoff format to compare-options

### Task 3.3: Implement `steelman`
**Objective:** Create a reusable strongest-form disagreement protocol.

**Files:**
- Create: `skills/core/steelman/SKILL.md`

**Subtasks:**
- [ ] Define strongest-form restatement rules
- [ ] Define invalid critique patterns
- [ ] Add a short output template
- [ ] Add examples

### Task 3.4: Implement `doubt-list`
**Objective:** Create a reusable skeptical verification skill.

**Files:**
- Create: `skills/core/doubt-list/SKILL.md`

**Subtasks:**
- [ ] Define happy path doubts
- [ ] Define edge case doubts
- [ ] Define boundary doubts
- [ ] Define evil demon scenarios
- [ ] Define required verification outputs

### Task 3.5: Implement `compare-options`
**Objective:** Add a practical option comparison skill.

**Files:**
- Create: `skills/core/compare-options/SKILL.md`

**Subtasks:**
- [ ] Define gains/losses structure
- [ ] Define reversibility check
- [ ] Define risk categories
- [ ] Define recommendation constraints

### Task 3.6: Implement `assumption-audit`
**Objective:** Add a reusable hidden-premise detector.

**Files:**
- Create: `skills/core/assumption-audit/SKILL.md`

**Subtasks:**
- [ ] Define explicit assumption section
- [ ] Define hidden assumption section
- [ ] Define category critique section
- [ ] Define value conflict section

### Task 3.7: Implement `minority-report`
**Objective:** Preserve dissent as reusable output.

**Files:**
- Create: `skills/core/minority-report/SKILL.md`

**Subtasks:**
- [ ] Define unresolved concern structure
- [ ] Define discarded alternative structure
- [ ] Define revisit triggers
- [ ] Define “why not chosen now” section

### Task 3.8: Implement `synthesis-memo`
**Objective:** Turn debate outputs into structured synthesis artifacts.

**Files:**
- Create: `skills/core/synthesis-memo/SKILL.md`

**Subtasks:**
- [ ] Define thesis field
- [ ] Define antithesis field
- [ ] Define preserved strengths field
- [ ] Define higher-order synthesis field
- [ ] Define next-step field

### Task 3.9: Implement `decision-memo`
**Objective:** Provide a durable approval-friendly artifact.

**Files:**
- Create: `skills/core/decision-memo/SKILL.md`

**Subtasks:**
- [ ] Define decision summary
- [ ] Define rationale
- [ ] Define assumptions
- [ ] Define dissent section
- [ ] Define review date section

### Task 3.10: Implement `court-review`
**Objective:** Provide a reusable governance review pattern.

**Files:**
- Create: `skills/core/court-review/SKILL.md`

**Subtasks:**
- [ ] Define strategist section
- [ ] Define operator section
- [ ] Define censor section
- [ ] Define historian section
- [ ] Define sovereign verdict section

---

### Phase 4: Overlay implementation

### Task 4.1: Implement `dialectic` overlay
**Objective:** Keep Hegelian synthesis as a powerful but scoped ideation overlay.

**Files:**
- Create: `skills/overlays/dialectic/SKILL.md`

**Subtasks:**
- [ ] Define activation conditions
- [ ] Define anti-patterns
- [ ] Define relation to synthesis-memo
- [ ] Define ideal use cases

### Task 4.2: Implement `skeptic` overlay
**Objective:** Make Descartes-style doubt a reusable review mode.

**Files:**
- Create: `skills/overlays/skeptic/SKILL.md`

**Subtasks:**
- [ ] Define activation conditions
- [ ] Define relation to doubt-list
- [ ] Define artifact expectations
- [ ] Define release/review use cases

### Task 4.3: Implement `genealogy` overlay
**Objective:** Introduce Nietzsche as a serious category and value critic.

**Files:**
- Create: `skills/overlays/genealogy/SKILL.md`

**Subtasks:**
- [ ] Define activation conditions
- [ ] Define relation to assumption-audit
- [ ] Define inherited value critique structure
- [ ] Define revaluation output format

### Task 4.4: Implement `court` overlay
**Objective:** Turn statecraft/history into a governance workflow.

**Files:**
- Create: `skills/overlays/court/SKILL.md`

**Subtasks:**
- [ ] Define roles
- [ ] Define activation conditions
- [ ] Define relation to court-review skill
- [ ] Define governance artifact structure

---

### Phase 5: Subagent prompt revisions

### Task 5.1: Revise Socrates prompt
**Objective:** Make Socrates a router of workflows and artifacts.

**Files:**
- Modify: `agents/socrates.md`

**Subtasks:**
- [ ] Reduce “CEO” language
- [ ] Add routing to core skills and overlays
- [ ] Add artifact enforcement language
- [ ] Add “do not over-orchestrate” note

### Task 5.2: Revise Hegel prompt
**Objective:** Scope dialectics so it is powerful, not overused.

**Files:**
- Modify: `agents/hegel.md`

**Subtasks:**
- [ ] Add “when not to use dialectics” section
- [ ] Add fallback to simpler option-comparison flows
- [ ] Add anti-novelty-bias note
- [ ] Add artifact references to synthesis-memo and decision-memo

### Task 5.3: Revise Descartes prompt
**Objective:** Expand Descartes into epistemic verification.

**Files:**
- Modify: `agents/descartes.md`

**Subtasks:**
- [ ] Add distinction between fact/inference/preference/guess
- [ ] Add artifact review behavior
- [ ] Add reasoning clarity gate
- [ ] Add review outputs for decision documents

### Task 5.4: Revise Nietzsche prompt
**Objective:** Transform Nietzsche into genealogy/value critique operator.

**Files:**
- Modify: `agents/nietzsche.md`

**Subtasks:**
- [ ] Replace primary identity from marketer to genealogist/value critic
- [ ] Keep copywriting as a secondary function
- [ ] Add assumption and category critique patterns
- [ ] Add revaluation output structure

### Task 5.5: Review Wittgenstein, Spinoza, Kant for v2 alignment
**Objective:** Align other agents with skill-first architecture.

**Files:**
- Modify: `agents/wittgenstein.md`
- Modify: `agents/spinoza.md`
- Modify: `agents/kant.md`

**Subtasks:**
- [ ] Clarify how each maps to core skills
- [ ] Remove unnecessary role-theater language
- [ ] Add artifact responsibilities where appropriate
- [ ] Ensure consistency with v2 terminology

---

### Phase 6: Documentation and packaging

### Task 6.1: Rewrite README
**Objective:** Reposition Agora for adoption.

**Files:**
- Modify: `README.md`

**Subtasks:**
- [ ] Replace debate-harness-first opening
- [ ] Introduce skill-first overlay framing
- [ ] Show quick examples using small commands
- [ ] Explain core skills vs overlays
- [ ] Explain that users keep their existing host agents

### Task 6.2: Add host install documentation
**Objective:** Make adoption easy across hosts.

**Files:**
- Create: `docs/install-claude-code.md`
- Create: `docs/install-opencode.md`

**Subtasks:**
- [ ] Write install steps
- [ ] Write verification steps
- [ ] Write example commands
- [ ] Write upgrade/update guidance

### Task 6.3: Add examples
**Objective:** Show repeated practical value.

**Files:**
- Create: `docs/examples/clarify-example.md`
- Create: `docs/examples/decision-example.md`
- Create: `docs/examples/skeptic-example.md`
- Create: `docs/examples/court-example.md`

**Subtasks:**
- [ ] Add product strategy example
- [ ] Add debugging review example
- [ ] Add architecture decision example
- [ ] Add governance review example

---

### Phase 7: Validation

### Task 7.1: Run internal smoke tests on documentation flow
**Objective:** Ensure the repo structure and docs are internally coherent.

**Files:**
- Review: `README.md`
- Review: `commands/*.md`
- Review: `skills/**/*.md`
- Review: `agents/*.md`

**Subtasks:**
- [ ] Confirm terminology consistency
- [ ] Confirm command names match docs
- [ ] Confirm overlay references are valid
- [ ] Confirm no file paths are stale

### Task 7.2: Validate first-run UX
**Objective:** Make sure a new user understands the product quickly.

**Subtasks:**
- [ ] Ask: can a new user understand the value in 30 seconds?
- [ ] Ask: can a user get value from one command without learning the whole worldview?
- [ ] Ask: does Agora look like an overlay instead of a replacement?
- [ ] Ask: is the philosophy translated into practical outputs?

### Task 7.3: Validate differentiation
**Objective:** Ensure Agora remains distinct from generic skill bundles.

**Subtasks:**
- [ ] Check that core skills are useful enough for broad adoption
- [ ] Check that overlays are distinctive enough to justify the brand
- [ ] Check that genealogy and court modes feel genuinely new
- [ ] Check that Agora is more than “superpowers with philosophers”

---

## 10. Non-goals for v2

These are explicitly out of scope for this phase.

- building a standalone runtime from scratch
- replacing existing host agents
- adding many more philosopher characters without workflow justification
- making dialectic the mandatory mode for all tasks
- building a heavy UI before skill usefulness is validated
- splitting the repo into separate packages before core usage is proven

---

## 11. Launch criteria for v2

Agora v2 can be considered ready for public positioning update when all of the following are true:

- README presents Agora as a skill-first overlay
- at least 5 core skills are implemented
- at least 2 overlays are implemented
- Socrates, Hegel, Descartes, Nietzsche are revised for v2
- `/clarify`, `/decide`, `/doubt`, `/minority-report`, `/court-review` exist
- examples demonstrate repeated practical use
- philosophy is clearly translated into workflow value

---

## 12. Strategic decision

**Decision:** Do not create a separate skills repository yet.

**Rationale:**
- Agora already has brand and conceptual coherence
- splitting too early would weaken product identity
- the core skills are not yet usage-validated enough to justify separation
- the right move is to restructure Agora internally into core skills + overlays first

**Revisit trigger:**
Reconsider repo split only if:
- the core skills are widely reused without the overlays
- host support broadens significantly
- Agora branding itself becomes an adoption bottleneck
- a lightweight `agora-core` package becomes clearly useful

---

## 13. Commit grouping recommendation

Recommended documentation-first commit sequence:

1. `docs: add Agora v2 PRD and restructure plan`
2. `docs: add philosophy and recipes documents`
3. `feat: add core skill directory and initial skills`
4. `feat: add overlay skill directory and skeptic/dialectic overlays`
5. `feat: add v2 commands for clarify decide doubt and court review`
6. `docs: rewrite README for skill-first overlay positioning`
7. `refactor: revise Socrates Hegel Descartes and Nietzsche prompts for v2`

---

## 14. Immediate next task recommendation

Implement these first, in order:
1. rewrite README opening
2. create `skills/core/clarify-goals/SKILL.md`
3. create `skills/core/doubt-list/SKILL.md`
4. create `skills/core/minority-report/SKILL.md`
5. revise `agents/nietzsche.md`
6. revise `agents/descartes.md`
7. add `commands/clarify.md`
8. add `commands/doubt.md`

These give the highest ratio of adoption value to implementation effort.
