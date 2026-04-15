# Agora Recipes

These recipes show how Agora v2 is used as an overlay on top of an existing host agent.
Each recipe starts with a small command and ends with a durable artifact.

## Recipe 1: Product decision

Scenario:
You are unsure whether Agora should remain plugin-first or split into a host-agnostic core.

### Command
```bash
/decide "Should Agora remain plugin-first or split into a host-agnostic core now?"
```

### Workflow
1. `frame-the-decision` defines the real fork.
2. `compare-options` evaluates gains, losses, reversibility, and risk.
3. `decision-memo` records the chosen path.
4. `minority-report` preserves the strongest case for the rejected path if needed.

### Artifact
- decision package
- optional minority report

## Recipe 2: Debugging or release review

Scenario:
A release plan feels plausible, but you do not trust it yet.

### Command
```bash
/doubt "Review this release checklist for hidden failure modes before we ship"
```

### Workflow
1. classify claims as fact / inference / preference / guess
2. generate happy path, edge case, boundary, ambiguity, and evil-demon doubts
3. convert doubts into verification actions
4. assign release posture

### Artifact
- doubt list
- release posture

## Recipe 3: Architecture disagreement

Scenario:
Two strong approaches exist and the team is stuck between them.

### Command
```bash
/agora "We have two credible architecture approaches and need a synthesis if one exists"
```

### Workflow
1. route into dialectic overlay
2. force thesis vs antithesis
3. preserve strengths from both sides
4. end in either synthesis memo, decision memo, or deadlock report

### Artifact
- synthesis memo or deadlock report

## Recipe 4: Writing and positioning

Scenario:
The team has language for the product, but it may be trapped in inherited categories.

### Command
```bash
/assumption-audit "Audit the assumptions behind our current positioning for Agora v2"
```

### Workflow
1. identify explicit assumptions
2. surface hidden assumptions
3. critique inherited categories
4. map value conflicts
5. propose a revaluation
6. only then draft README or messaging

### Artifact
- assumption audit
- revaluation notes

## Recipe 5: Governance and approval review

Scenario:
A public launch change needs strategy, operational, oversight, and final approval perspectives separated.

### Command
```bash
/court-review "Review whether Agora v2 is ready for a public positioning update"
```

### Workflow
1. strategist evaluates long-term posture
2. operator checks execution realism
3. censor identifies unacceptable risk or weak justification
4. historian checks precedent and path dependency
5. sovereign issues verdict and conditions

### Artifact
- court review
- sovereign verdict

## Recipe selection guide

If you are unsure where to start:
- vague problem -> `/clarify`
- real decision fork -> `/decide`
- verification or risk review -> `/doubt`
- hidden assumptions or category critique -> `/assumption-audit`
- unresolved dissent -> `/minority-report`
- governance approval -> `/court-review`
- open-ended ideation or synthesis -> `/agora`
