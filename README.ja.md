# Agora

[English](README.md) | [한국어](README.ko.md) | [中文](README.zh.md) | 日本語

> エージェントは選択肢を生成し、Agora は人間が判断を監督できるようにする。

Agora は supervised AI work のための skill-first overlay です。
既存のホストエージェントの上に clarification、doubt、dissent、synthesis、governance のワークフローを追加します。

Claude Code、Hermes、OpenCode、Codex、OpenClaw などのホストはそのまま使えます。Agora は再利用可能な reasoning command、レビュー可能な artifact、workflow registry、そして実用的な philosophical mode を提供します。

## Quick start

最も簡単な使い方は、共通エントリーポイントである `agora` から始めて、問題を自然言語で説明することです。

- Claude Code: `/agora "あなたの問題"`
- Hermes: まず `/agora` を使い、その後で問題を説明
- Codex: インストール後に `$agora "あなたの問題"`
- OpenCode: native skill tool で `agora` を先に読み込み、その後で問題を説明

特定のフローを直接使いたい場合は、対応する skill や command を直接呼び出すこともできます。
例: `clarify-goals`、`cartesian-grill`、`doubt-list`、`court-review`

## v2 で変わったこと

Agora はもはや debate harness を前面に出すプロダクトではありません。
今は次のことを支援する overlay です。
- 行動前に本当の意思決定を明確にする
- 反対意見を消さずに残す
- 出力を信頼する前に doubt list を作る
- 計画を一問ずつ grill して検証可能な明確さにする
- 隠れた前提や継承されたカテゴリーを可視化する
- 人間の承認に向いた artifact を作る

哲学は装飾ではなく方法論です。
Dialectic、skeptic、genealogy、court は roleplay ではなく skill の実行姿勢を決める mode です。

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
Modes are not installed as skills. 哲学的な判断姿勢を表す enum です。
- dialectic — 戦略的 synthesis と ideation
- skeptic — 検証とリスクレビュー
- genealogy — 前提と価値の批判
- court — ガバナンスと承認構造

### Workflow registry
`agora` は workflow registry を使って複数の core skill を順序づけて接続します。
詳しくは `docs/workflows.md` を参照してください。

## Commands

- `/agora "prompt"` — 適切なワークフローへルーティング
- `/clarify "prompt"` — 目的・制約・成功条件・未知点を抽出
- `/decide "prompt"` — 実際の分岐を構造化し decision memo を作成
- `/doubt "prompt"` — デカルト的 doubt list と検証計画を生成
- `/dialectic "prompt"` — ヘーゲル的 synthesis モードを実行
- `/steelman "prompt"` — 批判前に相手の strongest-form を再構成
- `/assumption-audit "prompt"` — 隠れた前提、継承された分類、価値衝突を露出
- `/minority-report "prompt"` — 未解決の objection と revisit trigger を保持
- `/court-review "prompt"` — strategist/operator/censor/historian/sovereign の視点を分離

## Host quick start

### Claude Code
```bash
/plugin marketplace add malleus35/agora
/plugin install agora@malleus35-agora
/clarify "この曖昧なアイデアを具体的な brief にして"
/decide "2つの製品方針のどちらを選ぶべきか決めて"
```

### Hermes
```bash
# skills.sh public index 更新後:
hermes skills install skills-sh/malleus35/agora/agora --category agora --yes
```
インストール後、セッション内で最も簡単な入口は次です。
```text
/agora
```

### OpenCode
OpenCode に次のように伝えてください：
```text
Fetch and follow instructions from https://raw.githubusercontent.com/malleus35/agora/refs/heads/main/.opencode/INSTALL.md
```
インストール後は、native skill tool で `agora` を先に読み込むのが最も簡単です。

### OpenClaw
```bash
npm install -g openclaw@latest
openclaw onboard --install-daemon
```
OpenClaw では個別 skill 配布に加えて bundle-plugin によるまとめ配布も可能です。

### Codex
Codex に次のように伝えてください：
```text
Fetch and follow instructions from https://raw.githubusercontent.com/malleus35/agora/refs/heads/main/.codex/INSTALL.md
```
インストール後、最も簡単な入口は次です。
```text
$agora "あなたの問題"
```

## Installation

ホストごとにインストール方法は異なります。
- Claude Code: plugin
- Hermes: repo-backed skills.sh install
- OpenClaw: 個別 skill または bundle-plugin
- Codex / OpenCode: instruction ベースのインストール

## Current state

Agora v2.3.0 は skill-first workflow registry 方向の現行リリースです。
このリポジトリは次を提供します。
- reusable core skills
- enum-like modes
- required artifact fields を持つ workflow registry
- low-friction commands
- artifact と supervision を中心に再設計された agent prompt

## Registry status

- Local reinstall: 2026-05-06 時点で `~/.agents/skills` を `skills/core/*` から再リンクし、旧 callable overlay リンクを削除しました。
- Claude Code: `malleus35/agora` marketplace の追加と `agora@malleus35-agora` の user scope v2.3.0 update が成功しました。
- Codex plugin marketplace: `malleus35/agora` marketplace の追加が成功しました。
- Hermes / skills.sh: `agora` public package submission PR #2 を作成済みです。skills.sh search index の反映はまだ待機中です。
- Hermes starter bundle は v2.3 で public `agora` entrypoint 中心です。Modes は skills として install しません。
- ClawHub / OpenClaw: Node 22 上で CLI 動作と authenticated publish を検証済み
  - published slug 例: `agora-clarify-goals`
  - current version: `2.3.0`

## Documentation

- `docs/philosophy.md`
- `docs/modes.md`
- `docs/workflows.md`
- `docs/PRD-v3.md`
- `docs/recipes.md`
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
