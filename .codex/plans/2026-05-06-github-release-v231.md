# Agora GitHub Release v2.3.1 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Publish GitHub Releases so the existing v2.3.0 tag is represented and the current deployment/docs work is released as v2.3.1 without moving old tags.

**Architecture:** Keep `v2.3.0` immutable. Create the missing GitHub Release for `v2.3.0`, then bump release metadata to `2.3.1`, tag current `main` as `v2.3.1`, and create a GitHub Release that includes local reinstall, Claude/Codex marketplace, and skills.sh discovery status.

**Tech Stack:** POSIX shell contract test, Git tags, GitHub CLI releases.

---

### Task 1: Add v2.3.1 Release Contract

**Files:**
- Modify: `tests/agora-skill-contracts.sh`
- Test: `tests/agora-skill-contracts.sh`

- [ ] **Step 1: Write the failing test**

Require plugin manifests and README release status to use v2.3.1:

```sh
assert_contains "README.md" "Agora v2.3.1"
assert_contains ".claude-plugin/plugin.json" "\"version\": \"2.3.1\""
assert_contains ".claude-plugin/marketplace.json" "\"version\": \"2.3.1\""
```

- [ ] **Step 2: Run test to verify it fails**

Run: `rtk sh tests/agora-skill-contracts.sh`

Expected: FAIL because README and manifests still say v2.3.0.

- [ ] **Step 3: Commit RED**

```bash
rtk git add tests/agora-skill-contracts.sh .codex/plans/2026-05-06-github-release-v231.md
rtk git commit -m "test: require v2.3.1 release metadata"
```

### Task 2: Update Release Metadata

**Files:**
- Modify: `README.md`
- Modify: `README.ko.md`
- Modify: `README.zh.md`
- Modify: `README.ja.md`
- Modify: `.claude-plugin/plugin.json`
- Modify: `.claude-plugin/marketplace.json`
- Test: `tests/agora-skill-contracts.sh`

- [ ] **Step 1: Update manifests**

Set plugin and marketplace versions to `2.3.1`; update marketplace description to say `Agora v2.3.1`.

- [ ] **Step 2: Update READMEs**

State that v2.3.1 is the current release covering the v2.3 workflow registry plus deployment/status refresh.

- [ ] **Step 3: Run GREEN**

Run: `rtk sh tests/agora-skill-contracts.sh`

Expected: exit 0.

- [ ] **Step 4: Commit GREEN**

```bash
rtk git add README.md README.ko.md README.zh.md README.ja.md .claude-plugin/plugin.json .claude-plugin/marketplace.json
rtk git commit -m "chore: bump release metadata to v2.3.1"
```

### Task 3: Publish GitHub Releases

**Files:**
- Git tags/releases only

- [ ] **Step 1: Create missing v2.3.0 GitHub Release**

Use existing tag `v2.3.0`. Do not move it.

- [ ] **Step 2: Tag and push v2.3.1**

Create annotated tag `v2.3.1` at current `HEAD` and push tags.

- [ ] **Step 3: Create v2.3.1 GitHub Release**

Release notes must include:
- public `skills/agora/SKILL.md`
- skills.sh URL discovery verification
- Claude Code plugin updated to v2.3.0 previously and metadata now v2.3.1
- Codex marketplace registration/upgrade
- Codex local reinstall symlink refresh

- [ ] **Step 4: Final verification**

Run:

```bash
rtk gh release list --repo malleus35/agora --limit 10
rtk gh release view v2.3.1 --repo malleus35/agora
rtk git status --branch --short
```
