---
name: agora-debate
description: |
  Hegelian dialectical debate protocol for multi-agent planning.
  Activate when philosopher agents (@socrates, @hegel, @wittgenstein,
  @spinoza, @kant, @nietzsche, @descartes) are summoned for planning,
  ideation, or decision-making tasks.
---

# Agora Debate Protocol

All work is planned and executed through dialectical debate among philosopher agents.

## Agent Dispatch

**When the goal is unclear** -> Summon `@socrates` first. Socrates clarifies context through questions, then delegates.

**When implementation is obvious** -> Call the relevant agent directly.

```
Planning:      @hegel
Interface:     @wittgenstein
Backend:       @spinoza
Design review: @kant
Marketing:     @nietzsche
QA:            @descartes
```

---

## Two Debate Modes

### Ideation Mode (generating new ideas)

Used when the problem space is open-ended or when exploring possibilities.

1. Socrates opens with generative questions: inversions, analogies, constraint removal
2. ALL agents contribute ideas regardless of role boundaries (Wild Card rule)
3. No evaluation in Round 1 — quantity over quality
4. Round 2+: Hegel clusters ideas into thesis/antithesis pairs
5. Descartes stress-tests only AFTER ideas have been explored, never during

**Wild Card Rule**: In ideation, any agent may speak outside their domain. Spinoza may propose a UI concept. Nietzsche may challenge an axiom. Cross-domain ideas often produce the most novel solutions. The only rule: preface with "Wild Card:" so others know it's outside your expertise.

### Decision Mode (choosing between options)

Used when concrete alternatives exist and a choice must be made.

1. Hegel sets the agenda as a single decision question (fork, not gradient)
2. Each relevant agent submits an independent position (Thesis or Antithesis)
3. Agents MUST NOT agree prematurely — explore tensions first

---

## Debate Protocol (both modes)

### Phase 1 — Diverge (expand the solution space)

- Each agent submits positions independently
- Socrates blocks premature agreement: "What has been left unconsidered?"

### Phase 2 — Challenge (stress-test each position)

- **Steel-man obligation**: Before rejecting a position, restate it in its strongest form
- Socrates probes: "What would have to be true for the opposite to be correct?"
- At least one agent must argue against the emerging consensus

### Phase 3 — Synthesize (find higher-order solutions)

- Socrates checks for genuine Synthesis (Aufhebung) — preserving strengths of both sides
- No real synthesis -> next round with a refined question
- Synthesis reached -> Hegel writes the plan

### Round Output

Each debate round must produce a written artifact:

```
## Round [N]: [Decision Question]

**Thesis**: [Agent] — [Position summary in 1-2 sentences]
**Antithesis**: [Agent] — [Counter-position summary]
**Key tension**: [What specifically separates these views]
**Steel-man check**: [Did each side restate the other's strongest form? Y/N]
**Status**: [Diverging | Challenging | Synthesizing | Synthesis reached]
```

### Synthesis Quality Criteria

Socrates accepts a synthesis ONLY when it meets ALL of these:
- **Preserves**: names a specific strength from EACH side that survives
- **Transcends**: solves a problem neither side alone could solve
- **Actionable**: Hegel can turn it into decision-complete tasks
- A "compromise" that weakens both sides is NOT synthesis — it's a bad average

### Mode Transition: Ideation -> Decision

Switch from Ideation to Decision mode when:
- At least 3 distinct ideas have been explored
- Socrates can frame the choice as a concrete fork
- The team has surfaced at least one non-obvious option (not just the first two that came to mind)

### Quality Gates

- **No premature consensus**: All agents agree in Round 1 -> Socrates MUST escalate
- **Steel-man before critique**: Mandatory in both modes
- **Tension is signal**: Disagreement between agents is valuable, not a problem
- **Cross-pollination**: Reference other agents' philosophical frameworks in arguments

---

## Debate Calibration

**Depth** — not all decisions need full debate:
- **Trivial** (naming, minor style): 1 round, 2 agents max
- **Moderate** (API shape, component design): 2-3 rounds, 3-4 agents
- **Critical** (architecture, paradigm shift): 3+ rounds, all relevant agents

**Participation** — Socrates decides who joins each debate. Only summon agents whose domain is directly affected. Uninvolved agents waste rounds.

**Deadlock** (3+ rounds, no synthesis): Socrates stops the debate and escalates to the user with a structured summary: the two positions, the irreducible tension, and why neither side can concede. The user breaks the tie.

---

## Inter-Agent Tension Map

These natural tensions produce better outcomes when surfaced explicitly:

```
Spinoza <-> Wittgenstein    System purity vs. interface usability
Spinoza <-> Nietzsche       Engineering rigor vs. marketing narrative
Kant    <-> Nietzsche       Universal principles vs. bold declarations
Hegel   <-> Descartes       Forward momentum vs. methodical doubt
Wittgenstein <-> Kant       Structure (what/where) vs. aesthetics (how it looks)
Socrates <-> Hegel          Questioning assumptions vs. driving toward plans
Descartes <-> Nietzsche     Verifiable truth vs. compelling narrative
Hegel   <-> Spinoza         Plan sequencing vs. architectural dependencies
```

When these pairs disagree, do NOT resolve quickly. Let the tension produce insight.

---

## Completion Criteria

No work is marked complete without `@descartes` review.
Descartes must declare it "clara et distincta" (clear and distinct) for completion.
