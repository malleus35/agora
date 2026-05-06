# Agora Workflow Registry v2.3 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add Cartesian Grill, workflow registry, implementation planning/TDD guidance, and convert overlays into documented modes while keeping `agora` as the single primary entrypoint.

**Architecture:** Preserve Agora's existing skill-first repo shape, but split public routing from internal modes. `agora` becomes the workflow registry host, core skills remain reusable building blocks, artifact skills remain final durable outputs, and former overlays become documented mode enums rather than callable skill packages.

**Tech Stack:** Markdown Agent Skills (`SKILL.md`), shell contract tests, Claude/Codex/OpenCode install docs, Git release tag.

---

### Task 1: Add Contract Tests First

**Files:**
- Create: `tests/agora-skill-contracts.sh`

- [ ] **Step 1: Write the failing contract test**

```sh
#!/usr/bin/env sh
set -eu

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

assert_file() {
  test -f "$1" || fail "missing file: $1"
}

assert_contains() {
  file="$1"
  needle="$2"
  grep -F "$needle" "$file" >/dev/null || fail "$file missing: $needle"
}

assert_not_exists() {
  test ! -e "$1" || fail "should not exist: $1"
}

assert_file "skills/core/cartesian-grill/SKILL.md"
assert_file "skills/core/prd-from-requirements/SKILL.md"
assert_file "skills/core/tdd-subagent-implementation/SKILL.md"
assert_file "docs/PRD-v3.md"
assert_file "docs/workflows.md"
assert_file "docs/modes.md"

assert_contains "skills/core/cartesian-grill/SKILL.md" "Ask one question at a time."
assert_contains "skills/core/cartesian-grill/SKILL.md" "doubt-list is a batch verification artifact"
assert_contains "skills/core/prd-from-requirements/SKILL.md" "tasks"
assert_contains "skills/core/prd-from-requirements/SKILL.md" "subtasks"
assert_contains "skills/core/tdd-subagent-implementation/SKILL.md" "NO PRODUCTION CODE WITHOUT A FAILING TEST FIRST"
assert_contains "skills/core/tdd-subagent-implementation/SKILL.md" "subagent"
assert_contains "docs/workflows.md" "workflow: plan-stress-test"
assert_contains "docs/workflows.md" "artifact:"
assert_contains "docs/workflows.md" "Artifact fields are required"
assert_contains "docs/modes.md" "Modes are not callable skills."
assert_contains "skills/core/agora/SKILL.md" "Workflow registry"
assert_contains "skills/core/agora/SKILL.md" "plan-stress-test"
assert_contains "README.md" "cartesian-grill"
assert_contains "README.md" "prd-from-requirements"
assert_contains "README.md" "tdd-subagent-implementation"
assert_contains "README.md" "Modes are not installed as skills"
assert_contains "README.ko.md" "cartesian-grill"
assert_contains ".claude-plugin/plugin.json" "\"version\": \"2.3.0\""
assert_contains ".claude-plugin/marketplace.json" "\"version\": \"2.3.0\""

assert_not_exists "skills/overlays/dialectic/SKILL.md"
assert_not_exists "skills/overlays/skeptic/SKILL.md"
assert_not_exists "skills/overlays/genealogy/SKILL.md"
assert_not_exists "skills/overlays/court/SKILL.md"
```

- [ ] **Step 2: Run test to verify RED**

Run: `sh tests/agora-skill-contracts.sh`

Expected: FAIL with `missing file: skills/core/cartesian-grill/SKILL.md`.

### Task 2: Add New Core Skills

**Files:**
- Create: `skills/core/cartesian-grill/SKILL.md`
- Create: `skills/core/prd-from-requirements/SKILL.md`
- Create: `skills/core/tdd-subagent-implementation/SKILL.md`

- [ ] **Step 1: Add `cartesian-grill`**
  - Define it as interactive Descartes-style interrogation.
  - Explicitly distinguish it from `doubt-list`.
  - Completion requires clarity gate, verification backlog, or blocking ambiguity.

- [ ] **Step 2: Add `prd-from-requirements`**
  - Use when requirements are already clear enough to plan.
  - Produce PRD with tasks and subtasks broken down as small as practical.
  - Route unclear requirements back to `clarify-goals`.

- [ ] **Step 3: Add `tdd-subagent-implementation`**
  - Recommend adding a dedicated core skill instead of sprinkling rules across all implementation-phase skills.
  - Require TDD for implementation.
  - Require subagents for test execution review and code/logic review when available.
  - Define fallback if a host has no subagent support.

### Task 3: Convert Overlays to Modes

**Files:**
- Create: `docs/modes.md`
- Delete: `skills/overlays/dialectic/SKILL.md`
- Delete: `skills/overlays/skeptic/SKILL.md`
- Delete: `skills/overlays/genealogy/SKILL.md`
- Delete: `skills/overlays/court/SKILL.md`

- [ ] **Step 1: Add mode enum documentation**
  - Define `dialectic`, `skeptic`, `genealogy`, and `court`.
  - State that modes are not callable skills.
  - Map each mode to the core/artifact skills it changes.

- [ ] **Step 2: Remove callable overlay skill files**
  - Delete old overlay `SKILL.md` files so host skill discovery no longer treats modes as direct skills.

### Task 4: Add Workflow Registry and PRD

**Files:**
- Create: `docs/workflows.md`
- Create: `docs/PRD-v3.md`
- Modify: `skills/core/agora/SKILL.md`

- [ ] **Step 1: Add `docs/workflows.md`**
  - Include the provided `plan-stress-test` registry entry exactly in spirit.
  - Clarify that `artifact` is required and list what each artifact field means.
  - Add representative workflows for decision, synthesis, governance, PRD creation, and implementation.

- [ ] **Step 2: Add `docs/PRD-v3.md`**
  - Document investigation findings, design decision, and implementation scope.
  - Include explicit trade-off analysis: single `agora` entrypoint vs exposed endpoint skills.

- [ ] **Step 3: Update `agora`**
  - Keep `agora` as the single primary entrypoint.
  - Add workflow registry summary.
  - Route to workflows rather than callable overlay skills.
  - Define fallback if a host fails to chain skills.

### Task 5: Update README, Install Docs, and Release Metadata

**Files:**
- Modify: `README.md`
- Modify: `README.ko.md`
- Modify: `docs/README.codex.md`
- Modify: `docs/README.opencode.md`
- Modify: `docs/install-hermes.md`
- Modify: `.codex/INSTALL.md`
- Modify: `.opencode/INSTALL.md`
- Modify: `.claude-plugin/plugin.json`
- Modify: `.claude-plugin/marketplace.json`

- [ ] **Step 1: Clarify skills missing from README**
  - Add `steelman`, `synthesis-memo`, and all new core skills to the core list.

- [ ] **Step 2: Clarify modes**
  - Say modes are documented in `docs/modes.md` and are not installed as skills.

- [ ] **Step 3: Update install docs**
  - Remove overlay installation guidance.
  - Add new core skills where the host install doc lists starter or full skill sets.

- [ ] **Step 4: Bump release metadata**
  - Update version strings from `2.2.0` to `2.3.0`.

### Task 6: Verify, Commit, and Release

**Files:**
- All files above.

- [ ] **Step 1: Run contract test**

Run: `sh tests/agora-skill-contracts.sh`

Expected: PASS with no output.

- [ ] **Step 2: Inspect git diff**

Run: `git status --short` and `git diff --stat`.

Expected: only planned files plus pre-existing untracked files.

- [ ] **Step 3: Commit**

Run:
```bash
git add .codex/plans/2026-05-06-agora-workflow-registry-v23.md tests/agora-skill-contracts.sh skills/core/cartesian-grill/SKILL.md skills/core/prd-from-requirements/SKILL.md skills/core/tdd-subagent-implementation/SKILL.md docs/modes.md docs/workflows.md docs/PRD-v3.md skills/core/agora/SKILL.md README.md README.ko.md docs/README.codex.md docs/README.opencode.md docs/install-hermes.md .codex/INSTALL.md .opencode/INSTALL.md .claude-plugin/plugin.json .claude-plugin/marketplace.json
git add -u skills/overlays
git commit -m "feat: add Agora workflow registry"
```

- [ ] **Step 4: Tag release**

Run:
```bash
git tag v2.3.0
```

- [ ] **Step 5: Final audit**
  - Confirm every user requirement maps to a committed file or tag.
  - Report any publish step not performed, such as remote push or marketplace publish.
