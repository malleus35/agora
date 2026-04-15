# Decision Example

## Prompt

```bash
/decide "Should Agora remain plugin-first or split into a host-agnostic core now?"
```

## Example output

```markdown
## Decision Package

### Decision Frame
- The real fork is whether to preserve a single branded repo for adoption or optimize early for cross-host reuse.

### Option Comparison
- Plugin-first keeps brand coherence and lower adoption friction.
- Repo split improves modularity but risks premature fragmentation.

### Recommendation
- Stay plugin-first for now.

### Decision Memo
- Decision summary: remain plugin-first in v2.
- Rationale: adoption and conceptual coherence matter more than premature modularization.
- Assumptions: host-agnostic reuse is not yet validated.
- Dissent: a future split may still be desirable if reuse expands.
- Review date or revisit trigger: revisit when core skills are reused widely without overlays.
```
