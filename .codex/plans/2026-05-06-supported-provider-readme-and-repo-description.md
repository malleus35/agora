# Supported Provider README And Repo Description Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Align public README and GitHub repo description with Agora's current supported surfaces: Claude Code, Codex, and skills.sh URL installation.

**Architecture:** Keep provider-specific install docs in the repository for historical/reference use, but remove unsupported or pending providers from public README quick starts and Claude plugin metadata. Update the GitHub repository About description after tracked docs and metadata pass contract tests.

**Tech Stack:** POSIX shell contract test, Markdown READMEs, Claude plugin JSON manifests, GitHub CLI repo metadata.

---

### Task 1: Add Public Provider Contract

**Files:**
- Modify: `tests/agora-skill-contracts.sh`
- Test: `tests/agora-skill-contracts.sh`

- [ ] **Step 1: Write the failing test**

Require supported-provider wording and reject unsupported provider names in public README/plugin metadata:

```sh
assert_contains "README.md" "Claude Code and Codex"
assert_contains "README.md" "Unsupported or pending providers are intentionally not listed in the quick start."
assert_contains ".claude-plugin/plugin.json" "Claude Code and Codex"
assert_contains ".claude-plugin/marketplace.json" "Claude Code and Codex"

if grep -n "Hermes\\|OpenCode\\|OpenClaw\\|ClawHub" README*.md .claude-plugin/plugin.json .claude-plugin/marketplace.json 2>/dev/null; then
  fail "unsupported provider wording found in public README or plugin metadata"
fi
```

- [ ] **Step 2: Run test to verify RED**

Run: `rtk sh tests/agora-skill-contracts.sh`

Expected: FAIL because README still lists unsupported/pending providers.

- [ ] **Step 3: Commit RED**

```bash
rtk git add tests/agora-skill-contracts.sh
rtk git commit -m "test: require supported provider wording"
```

### Task 2: Update Public Docs And Plugin Metadata

**Files:**
- Modify: `README.md`
- Modify: `README.ko.md`
- Modify: `README.zh.md`
- Modify: `README.ja.md`
- Modify: `.claude-plugin/plugin.json`
- Modify: `.claude-plugin/marketplace.json`
- Test: `tests/agora-skill-contracts.sh`

- [ ] **Step 1: Remove unsupported provider quick starts**

Remove pending or unsupported providers from README quick start, install, registry, and documentation sections.

- [ ] **Step 2: Narrow public purpose wording**

Describe Agora as a skill-first workflow registry for supervised AI judgment in Claude Code and Codex.

- [ ] **Step 3: Run GREEN**

Run: `rtk sh tests/agora-skill-contracts.sh`

Expected: exit 0.

- [ ] **Step 4: Commit GREEN**

```bash
rtk git add README.md README.ko.md README.zh.md README.ja.md .claude-plugin/plugin.json .claude-plugin/marketplace.json .codex/plans/2026-05-06-supported-provider-readme-and-repo-description.md
rtk git commit -m "docs: focus README on supported providers"
```

### Task 3: Update GitHub Repo Description

**Files:**
- Remote repo metadata only

- [ ] **Step 1: Edit repo description**

Run:

```bash
rtk gh repo edit malleus35/agora --description "Skill-first workflow registry for supervised AI judgment in Claude Code and Codex"
```

- [ ] **Step 2: Verify repo metadata**

Run:

```bash
rtk gh repo view malleus35/agora --json description
```

Expected description equals the new purpose wording.

### Task 4: Push And Verify

**Files:**
- Git branch and remote metadata

- [ ] **Step 1: Push main**

Run: `rtk git push origin main`

- [ ] **Step 2: Final verification**

Run:

```bash
rtk sh tests/agora-skill-contracts.sh
rtk git status --branch --short
rtk gh repo view malleus35/agora --json description
```
