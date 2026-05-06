# Agora v2.3 PRD

## Problem Statement

Agora has useful core skills and useful overlay behavior, but callable overlay
skills make the execution model ambiguous. Users can get good results by calling
only `agora`, yet host runtimes do not guarantee skill-to-skill chaining.

Agora v2.3 must keep the single `agora` entrypoint while making internal
workflows explicit enough to preserve consistency.

## Goals

- Add `cartesian-grill` as a core skill for interactive Descartes-style pressure testing.
- Clarify all core skills in README and install docs.
- Convert overlays into documented modes rather than callable skills.
- Add a PRD creation skill for clear requirements and small task/subtask breakdown.
- Add a workflow registry with required artifact fields.
- Add implementation-phase TDD and subagent review discipline as a dedicated core skill.
- Release as v2.3.0.

## Non-Goals

- Build a runtime workflow engine.
- Add a declarative DAG executor.
- Remove direct use of core skills for advanced users.
- Publish to external marketplaces in this local implementation pass.

## Design Decision

Keep `agora` as the primary public entrypoint.

Do not add many public endpoint skills yet. Instead, embed a workflow registry in
`agora` and document full workflow entries in `docs/workflows.md`.

This keeps user-facing usage simple while reducing the chance that `agora`
stops after a single routed skill.

## Trade-Offs

### Single entrypoint

Gains:
- users can keep calling only `agora`
- lower discovery burden
- matches the current successful usage pattern

Losses:
- less explicit than separate public endpoint skills
- `agora` becomes more responsible for routing and fallback behavior

### Endpoint skill family

Gains:
- clearer host skill discovery
- closer to gstack-style explicit commands

Losses:
- larger public surface
- duplicates routing logic across entrypoints
- weaker fit for users who always start with `agora`

## Requirements

1. `cartesian-grill` must be a core skill.
2. `cartesian-grill` must clearly differ from `doubt-list`.
3. README must list all current core skills.
4. Overlays must become modes and must not remain callable skill folders.
5. Workflow registry entries must include an explicit `artifact` field.
6. PRD generation from clear requirements must exist as a core skill.
7. Implementation guidance must require TDD and subagent review when available.
8. Release metadata must be bumped to v2.3.0.

## Tasks

1. Add contract test.
   - Subtask: assert new skill files exist.
   - Subtask: assert overlays no longer exist as skill files.
   - Subtask: assert release metadata is v2.3.0.

2. Add new core skills.
   - Subtask: create `cartesian-grill`.
   - Subtask: create `prd-from-requirements`.
   - Subtask: create `tdd-subagent-implementation`.

3. Add documentation.
   - Subtask: create `docs/modes.md`.
   - Subtask: create `docs/workflows.md`.
   - Subtask: create this PRD.

4. Update routing and install docs.
   - Subtask: update `agora`.
   - Subtask: update README files.
   - Subtask: update Codex, OpenCode, and Hermes install docs.

5. Release.
   - Subtask: run contract tests.
   - Subtask: commit.
   - Subtask: tag v2.3.0.

## Acceptance Checks

- `sh tests/agora-skill-contracts.sh` passes.
- `skills/overlays/*/SKILL.md` no longer exists.
- `README.md` and `README.ko.md` mention the new core skills.
- `docs/workflows.md` states that artifact fields are required.
- `.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json` use v2.3.0.

## Risks

- Existing users with old overlay skill symlinks may need to reinstall.
- Hosts that rely on direct overlay skill invocation will need to use `agora` or core skills instead.
- Marketplace publication still requires a separate remote publish step.
