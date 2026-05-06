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
assert_contains "README.md" "Local reinstall status"
assert_contains "README.md" "skills.sh"
assert_contains "README.ko.md" "cartesian-grill"
assert_contains "README.zh.md" "cartesian-grill"
assert_contains "README.ja.md" "cartesian-grill"
assert_contains "docs/install-hermes.md" "v2.3.0 local verification"
assert_contains "docs/README.codex.md" "Only core skills are installed as callable skills."
assert_contains ".codex/INSTALL.md" "skills/core/*"
assert_contains ".claude-plugin/plugin.json" "\"version\": \"2.3.0\""
assert_contains ".claude-plugin/marketplace.json" "\"version\": \"2.3.0\""
assert_contains ".claude-plugin/marketplace.json" "\"sha\": \"99b0707d73bbc678f91de850b04ac15c941dece3\""

if grep -R -n "skills/overlays/.*install\\|skills/overlays/dialectic\\|dialectic overlay\\|skeptic overlay\\|genealogy overlay\\|court overlay\\|Skill or overlay" \
  README*.md docs/README.* docs/install-*.md .codex/INSTALL.md .opencode/INSTALL.md commands skills 2>/dev/null; then
  fail "stale callable overlay wording found"
fi

workflow_count=$(grep -c "^workflow:" docs/workflows.md)
artifact_count=$(grep -c "^artifact:" docs/workflows.md)
test "$workflow_count" -gt 0 || fail "docs/workflows.md has no workflows"
test "$workflow_count" -eq "$artifact_count" || fail "each workflow must have exactly one artifact field"

assert_not_exists "skills/overlays/dialectic/SKILL.md"
assert_not_exists "skills/overlays/skeptic/SKILL.md"
assert_not_exists "skills/overlays/genealogy/SKILL.md"
assert_not_exists "skills/overlays/court/SKILL.md"
