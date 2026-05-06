# Agora Local Reinstall And Registry Deploy Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Reinstall the current Agora skills locally, refresh README/install documentation with verified status, and attempt supported Claude Code, Codex, and skills.sh distribution steps.

**Architecture:** Keep repo changes limited to contract tests and documentation. Treat global skill installation as an external state update verified by symlink targets and installed skill contents. Treat external registries as best-effort deploy targets: execute documented CLI paths when available, and record any auth or unsupported-command blockers explicitly.

**Tech Stack:** POSIX shell contract tests, Git, Codex global skill symlinks under `~/.agents/skills`, Agora source clone under `~/.codex/agora`, Claude Code CLI, Codex CLI, Hermes CLI for skills.sh.

---

### Task 1: Add Deployment Documentation Contract

**Files:**
- Modify: `tests/agora-skill-contracts.sh`
- Create: `skills/agora/SKILL.md`
- Test: `tests/agora-skill-contracts.sh`

- [ ] **Step 1: Write the failing test**

Add assertions that require the current documentation to name the verified local reinstall command surface and registry status:

```sh
assert_contains "README.md" "Local reinstall status"
assert_contains "README.md" "skills.sh"
assert_contains "docs/install-hermes.md" "v2.3.0 local verification"
assert_contains "docs/README.codex.md" "Only core skills are installed as callable skills."
assert_contains ".codex/INSTALL.md" "skills/core/*"
assert_file "skills/agora/SKILL.md"
assert_contains "skills/agora/SKILL.md" "single primary public entrypoint"
```

- [ ] **Step 2: Run test to verify it fails**

Run: `rtk sh tests/agora-skill-contracts.sh`

Expected: `FAIL: README.md missing: Local reinstall status`

- [ ] **Step 3: Commit RED**

```bash
rtk git add tests/agora-skill-contracts.sh .codex/plans/2026-05-06-agora-local-reinstall-and-registry-deploy.md
rtk git commit -m "test: require deployment documentation status"
```

### Task 2: Reinstall Local Agora Skills

**Files:**
- External update: `/Users/macbook/.codex/agora`
- External update: `/Users/macbook/.agents/skills`
- Test: shell verification commands

- [ ] **Step 1: Update the source clone**

Run with approval if network/write scope requires it:

```bash
rtk git -C /Users/macbook/.codex/agora pull --ff-only origin main
```

Expected: clone HEAD equals the workspace HEAD.

- [ ] **Step 2: Install callable core skills only**

Create or refresh symlinks from `/Users/macbook/.codex/agora/skills/core/*` into `/Users/macbook/.agents/skills/`.

- [ ] **Step 3: Remove stale callable overlay links**

Remove only links whose targets are under `/Users/macbook/.codex/agora/skills/overlays/`.

- [ ] **Step 4: Verify installed surface**

Run commands equivalent to:

```bash
rtk readlink /Users/macbook/.agents/skills/agora
rtk test -L /Users/macbook/.agents/skills/cartesian-grill
rtk test ! -e /Users/macbook/.agents/skills/dialectic
rtk grep -F "Workflow registry" /Users/macbook/.agents/skills/agora/SKILL.md
```

Expected: core links resolve to `/Users/macbook/.codex/agora/skills/core/...`; old overlay links are absent; `agora` contains the current workflow registry.

### Task 3: Refresh Documentation

**Files:**
- Modify: `README.md`
- Modify: `README.ko.md`
- Modify: `README.zh.md`
- Modify: `README.ja.md`
- Modify: `docs/install-hermes.md`
- Modify: `docs/README.codex.md`
- Modify: `.codex/INSTALL.md`
- Test: `tests/agora-skill-contracts.sh`

- [ ] **Step 1: Update README registry status**

Document the observed local reinstall status, Claude Code/Codex plugin status, and skills.sh/Hermes status without claiming unverified publication.

- [ ] **Step 2: Update install docs**

Make the Codex and Hermes install docs consistently state that callable skills are installed from `skills/core/*`, while modes are documented enums and overlays are not installed as callable skills.

- [ ] **Step 3: Run test to verify GREEN**

Run: `rtk sh tests/agora-skill-contracts.sh`

Expected: no output and exit 0.

### Task 4: Check External Deployment Paths

**Files:**
- Create or update: `skills/agora/SKILL.md` if the registry expects `skills/<skill>/SKILL.md`
- External command output unless a tracked doc needs status updates.
- Test: command help and publish/install attempts

- [ ] **Step 1: Inspect CLI availability**

Run:

```bash
rtk command -v hermes
rtk command -v claude
rtk command -v codex
```

Expected: paths are present or blockers are recorded.

- [ ] **Step 2: Inspect publish/install commands**

Use CLI help and official web documentation where needed to determine the current skills.sh, Claude Code plugin, and Codex plugin publication paths.

- [ ] **Step 3: Execute supported non-destructive deploy commands**

Attempt supported publish commands with approval. If a command stops on auth, registry review, missing command, or unsupported distribution surface, record the exact blocker instead of claiming success.

- [ ] **Step 4: Materialize the public registry entrypoint if required**

If Hermes publish creates a PR that adds `skills/agora/SKILL.md`, copy the current `skills/core/agora/SKILL.md` content into that public registry path in this branch and keep `skills/core/agora/SKILL.md` as the canonical development source.

### Task 5: Final Verification And Push

**Files:**
- Any modified docs/tests
- Git branch and tags

- [ ] **Step 1: Run contract tests**

Run: `rtk sh tests/agora-skill-contracts.sh`

Expected: exit 0.

- [ ] **Step 2: Inspect repository state**

Run: `rtk git status --branch --short`

Expected: only intentional tracked changes staged/committed; pre-existing untracked `docs/plans/`, `docs/post-linkedin-agora-v2.md`, and `docs/post-x-agora-v2.md` remain untouched.

- [ ] **Step 3: Commit GREEN documentation**

```bash
rtk git add README.md README.ko.md README.zh.md README.ja.md docs/install-hermes.md docs/README.codex.md .codex/INSTALL.md
rtk git commit -m "docs: update Agora deployment status"
```

- [ ] **Step 4: Push**

Run: `rtk git push origin main --tags`

Expected: `ok` or `up-to-date`.

- [ ] **Step 5: Completion audit**

Map every user requirement to evidence: local reinstall, README refresh, Claude Code/Codex distribution action or blocker, skills.sh publication action or blocker, tests, commits, and push status.
