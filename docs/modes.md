# Agora Modes

Modes replace callable overlay skills.

Modes are not callable skills. They are enum-like judgment settings used by
`agora` and workflow registry entries to decide how core and artifact skills
should be executed.

## Why modes exist

Earlier Agora versions exposed overlays as skills under `skills/overlays/`.
That made modes look like separate execution units even though they mostly
changed how another skill should be used.

Agora v2.3 keeps the philosophical value but removes the ambiguity:
- skill = reusable procedure or artifact generator
- mode = judgment posture applied to a workflow
- workflow = ordered skill sequence with stop conditions and artifacts

## Mode enum

### dialectic

Use when contradiction, strategic reframing, or synthesis matters.

Applies to:
- `steelman`
- `compare-options`
- `synthesis-memo`
- `decision-memo`
- `minority-report`

### skeptic

Use when verification matters more than novelty.

Applies to:
- `cartesian-grill`
- `doubt-list`
- `decision-memo`
- `tdd-subagent-implementation`

### genealogy

Use when hidden assumptions, inherited categories, or value conflicts may be
distorting the work.

Applies to:
- `assumption-audit`
- `clarify-goals`
- `decision-memo`

### court

Use when governance, approval, ownership, and role separation matter.

Applies to:
- `court-review`
- `decision-memo`
- `minority-report`

## Compatibility note

Hosts that previously installed `dialectic`, `skeptic`, `genealogy`, or `court`
as skills should reinstall Agora. These names now live as modes in this document
rather than direct skill folders.
