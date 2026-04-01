# Agora — Philosopher-Role Multi-Agent Harness

> "The unexamined plan is not worth executing." — Socrates (probably)

## Overview

Agora is a Claude Code multi-agent harness where specialized agents named after philosophers debate using Hegelian dialectics (thesis-antithesis-synthesis) to plan and execute work.

Each agent internalizes its philosopher's mode of thinking in its system prompt and operates through that lens within its technical domain.

---

## Philosophical Structure

```
Thesis            Antithesis          Synthesis
Each role's    →  Critical counter  → Higher-order
position          argument            integration
```

Meta-structure: Hegel designed the methodology that Hegel (the planner) himself operates under. Socrates facilitates the entire debate through maieutics.

---

## Agent Lineup

| Agent | Philosopher | Role | Core Method |
|---|---|---|---|
| `socrates` | Socrates (470–399 BC) | CEO / Orchestrator | Maieutics — draws out consensus through questions |
| `hegel` | Georg Hegel (1770–1831) | Planner / PM | Dialectics — plans via thesis-antithesis-synthesis |
| `wittgenstein` | Ludwig Wittgenstein (1889–1951) | FE / Interface | Language games — context determines paradigm |
| `spinoza` | Baruch Spinoza (1632–1677) | BE / Infrastructure | Geometric method — deduces systems from axioms |
| `kant` | Immanuel Kant (1724–1804) | Designer | Critique of Judgment — universal principles for beauty |
| `nietzsche` | Friedrich Nietzsche (1844–1900) | Marketer | Revaluation — declares new narratives |
| `descartes` | Rene Descartes (1596–1650) | QA | Methodical doubt — passes only the clear and distinct |

---

## Directory Structure (Plugin Layout)

```
agora/
├── .claude-plugin/
│   └── plugin.json                # Plugin manifest
├── agents/                        # Philosopher agents
│   ├── socrates.md                # CEO / Orchestrator
│   ├── hegel.md                   # Planner / PM
│   ├── wittgenstein.md            # FE / Interface
│   ├── spinoza.md                 # BE / Infrastructure
│   ├── kant.md                    # Designer
│   ├── nietzsche.md               # Marketer
│   └── descartes.md               # QA
├── skills/
│   └── agora-debate/
│       └── SKILL.md               # Dialectical debate protocol
├── commands/
│   └── agora.md                   # /agora entry command
├── docs/
│   ├── PRD.md                     # This document
│   └── debates/                   # Debate artifacts (runtime)
├── CLAUDE.md                      # Project-local guidance
├── README.md
└── LICENSE
```

---

## Workflow

### Phase 0 — Socrates' Summons (Maieutics)

When a user presents a vague idea, Socrates intervenes.
Questions until Purpose, Constraint, and Success criteria are clear.
Never gives answers directly.

```
User: "I want to build a communication tool between AI agents"
Socrates: "Which agents' communication do you want to solve first?
           What makes this impossible right now?
           If it succeeds, what changes?"
```

### Phase 1 — Ideation or Decision Mode

**Ideation** (open-ended problem): Socrates uses generative techniques (inversion, analogy, constraint removal, perspective shift, precedent mining). All agents contribute via Wild Card rule. No evaluation in Round 1.

**Decision** (concrete alternatives): Hegel frames the choice as a fork. Each agent submits a position. Steel-man obligation before critique.

### Phase 2 — Dialectical Debate Rounds

Hegel designs topic-specific debate rounds.
Each agent submits a role-appropriate position (Thesis or Antithesis).
Socrates checks whether Synthesis (Aufhebung) has emerged.
Round artifacts are saved to `docs/debates/`.

### Phase 3 — Hegel's Plan

Based on synthesized consensus, Hegel writes a decision-complete plan.
Implementers need zero additional judgment when reading the plan.
Post-synthesis retrospective appended.

### Phase 4 — Role-Based Execution

Spinoza: axioms -> architecture -> implementation
Wittgenstein: context analysis -> paradigm decision -> implementation
Kant: design review — "Does this UX rest on universal principles?"
Nietzsche: positioning, copy, community messaging

### Phase 5 — Descartes' Verification

Methodical doubt applied to all completion criteria.
Doubt List written before looking at code.
If doubt remains, it does not pass.

---

## Design Principles

1. **Philosophy is methodology, not decoration** — each agent genuinely operates differently through its philosopher's thinking.
2. **Tension creates consensus** — disagreement between agents is a feature, not a bug.
3. **Socrates holds no answers** — if the orchestrator has predetermined answers, debate becomes theater.
4. **Descartes is last** — no output is marked complete without QA.
5. **The interface is the world** — Wittgenstein judges GUI/TUI/CLI independently based on context.
