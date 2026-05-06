# Agora

[English](README.md) | 한국어 | [中文](README.zh.md) | [日本語](README.ja.md)

> 에이전트는 선택지를 만든다. Agora는 사람이 판단을 감독하도록 돕는다.

Agora는 감독된 AI 작업을 위한 skill-first overlay입니다.
기존에 쓰는 호스트 에이전트 위에 clarification, doubt, dissent, synthesis, governance 워크플로우를 추가합니다.

Claude Code, Hermes, OpenCode, Codex, OpenClaw 같은 기존 호스트는 그대로 두고, Agora는 재사용 가능한 reasoning command, durable artifact, workflow registry, philosophical mode를 더합니다.

## Quick start

가장 쉬운 사용법은 공통 entrypoint인 Agora부터 부른 뒤, 문제를 자연어로 설명하는 것입니다.

- Claude Code: `/agora "문제 설명"`
- Hermes: `/agora` 후 문제 설명
- Codex: 설치 후 `$agora "문제 설명"`
- OpenCode: native skill tool로 `agora`를 먼저 로드한 뒤 문제 설명

특정 플로우를 직접 쓰고 싶다면, 해당 skill이나 command를 직접 호출할 수도 있습니다.
예: `clarify-goals`, `cartesian-grill`, `doubt-list`, `court-review`

## v2에서 달라진 점

Agora는 더 이상 debate harness를 전면에 내세우지 않습니다.
이제는 다음을 돕는 overlay입니다.
- 행동 전에 진짜 결정을 명확히 하기
- 반대 의견을 지우지 않고 보존하기
- 출력을 신뢰하기 전에 doubt list 작성하기
- 계획을 한 질문씩 grill해서 검증 가능한 수준으로 만들기
- 숨겨진 가정과 상속된 범주 드러내기
- 사람이 승인할 수 있는 reviewable artifact 만들기

철학은 장식이 아니라 방법론입니다.
Dialectic, skeptic, genealogy, court는 roleplay가 아니라 skill 실행 방식을 정하는 mode입니다.

## Core skills, modes, workflows

### Core skills
- agora
- clarify-goals
- cartesian-grill
- prd-from-requirements
- tdd-subagent-implementation
- frame-the-decision
- compare-options
- doubt-list
- assumption-audit
- minority-report
- decision-memo
- steelman
- synthesis-memo
- court-review

### Modes
Modes are not installed as skills. 철학적 판단 태도를 나타내는 enum입니다.
- dialectic — 전략적 synthesis와 ideation
- skeptic — 검증과 리스크 리뷰
- genealogy — 가정과 가치 비판
- court — 거버넌스와 승인 구조

### Workflow registry
`agora`는 workflow registry를 통해 여러 core skill을 순서대로 이어갑니다.
자세한 내용은 `docs/workflows.md`를 참고하세요.

## Commands

- `/agora "prompt"` — 문제에 맞는 workflow로 라우팅
- `/clarify "prompt"` — 목적, 제약, 성공 조건, 미지수 추출
- `/decide "prompt"` — 실제 fork를 구조화하고 decision memo 작성
- `/doubt "prompt"` — 데카르트식 doubt list와 검증 계획 생성
- `/dialectic "prompt"` — 헤겔식 synthesis 모드 실행
- `/steelman "prompt"` — 비판 전에 상대 입장을 strongest-form으로 복원
- `/assumption-audit "prompt"` — 숨은 전제, 상속된 범주, 가치 충돌 드러내기
- `/minority-report "prompt"` — 해소되지 않은 objection과 revisit trigger 보존
- `/court-review "prompt"` — strategist/operator/censor/historian/sovereign 역할 분리

## Host quick start

### Claude Code
```bash
/plugin marketplace add malleus35/agora
/plugin install agora@malleus35-agora
/clarify "이 막연한 아이디어를 구체적인 brief로 바꿔줘"
/decide "두 제품 방향 중 하나를 골라줘"
```

### Hermes
```bash
# skills.sh public index 반영 후:
hermes skills install skills-sh/malleus35/agora/agora --category agora --yes
```
### skills.sh CLI
```bash
npx skills add https://github.com/malleus35/agora --skill agora
```
설치 후 세션 안에서는 다음이 가장 쉽습니다.
```text
/agora
```

### OpenCode
OpenCode에게 이렇게 말하세요:
```text
Fetch and follow instructions from https://raw.githubusercontent.com/malleus35/agora/refs/heads/main/.opencode/INSTALL.md
```
설치 후에는 native skill tool로 `agora`를 먼저 로드해 사용하는 것이 가장 쉽습니다.

### OpenClaw
```bash
npm install -g openclaw@latest
openclaw onboard --install-daemon
```
묶음 배포는 bundle-plugin 경로를 사용할 수 있고, 개별 skill은 ClawHub에서 설치할 수 있습니다.

### Codex
Codex에게 이렇게 말하세요:
```text
Fetch and follow instructions from https://raw.githubusercontent.com/malleus35/agora/refs/heads/main/.codex/INSTALL.md
```
설치 후 가장 쉬운 진입점은:
```text
$agora "문제 설명"
```

## Installation

설치 방식은 호스트마다 다릅니다.
- Claude Code: plugin
- Hermes: repo-backed skills.sh install
- OpenClaw: 개별 skill 또는 bundle-plugin
- Codex/OpenCode: instruction 기반 설치

## Current state

Agora v2.3.0은 skill-first workflow registry 방향의 현재 릴리즈입니다.
이 repo는 다음을 제공합니다.
- reusable core skills
- enum-like modes
- artifact가 명시된 workflow registry
- low-friction commands
- artifact와 supervision 중심으로 개정된 agent prompt

## Registry status

- Local reinstall: 2026-05-06 기준 `~/.agents/skills`를 `skills/core/*`에서 다시 링크했고, callable overlay 링크는 제거했습니다.
- Claude Code: `malleus35/agora` marketplace 등록과 `agora@malleus35-agora` v2.3.0 user-scope 업데이트가 성공했습니다.
- Codex plugin marketplace: `malleus35/agora` marketplace 등록이 성공했습니다.
- Hermes / skills.sh: `agora` public package 제출 PR #2가 생성됐고, skills.sh 검색 인덱스 반영은 아직 대기 중입니다.
- skills.sh CLI: URL 기반 discovery는 `npx skills add https://github.com/malleus35/agora --skill agora --list`로 검증됐고, 예상 설치 명령은 `npx skills add https://github.com/malleus35/agora --skill agora`입니다.
- Hermes starter bundle은 v2.3에서 public `agora` entrypoint 중심으로 정리됩니다. Modes는 skill로 설치하지 않습니다.
- ClawHub / OpenClaw: Node 22에서 CLI 동작 및 authenticated publish 검증 완료
  - published slug 예시: `agora-clarify-goals`
  - current version: `2.3.0`

## Documentation

- `docs/philosophy.md` — 철학과 workflow 매핑
- `docs/modes.md` — mode enum 정의
- `docs/workflows.md` — workflow registry
- `docs/PRD-v3.md`
- `docs/recipes.md` — 시나리오별 사용법
- `docs/install-claude-code.md`
- `docs/install-hermes.md`
- `docs/install-opencode.md`
- `docs/install-openclaw.md`
- `docs/README.codex.md`
- `docs/README.opencode.md`
- `docs/examples/`
- `mcp/recommended-servers.md`

## License

MIT
