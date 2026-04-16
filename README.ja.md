# Agora

[English](README.md) | [한국어](README.ko.md) | [中文](README.zh.md) | 日本語

> エージェントは選択肢を生成し、Agora は人間が判断を監督できるようにする。

Agora は supervised AI work のための skill-first overlay です。
既存のホストエージェントの上に clarification、doubt、dissent、synthesis、governance のワークフローを追加します。

Claude Code、Hermes、OpenCode、Codex、OpenClaw などのホストはそのまま使えます。Agora は再利用可能な reasoning command、レビュー可能な artifact、そして実用的な philosophical overlay を提供します。

## Quick start

最も簡単な使い方は、共通エントリーポイントである `agora` から始めて、問題を自然言語で説明することです。

- Claude Code: `/agora "あなたの問題"`
- Hermes: まず `/agora` を使い、その後で問題を説明
- Codex: インストール後に `$agora "あなたの問題"`
- OpenCode: native skill tool で `agora` を先に読み込み、その後で問題を説明

特定のフローを直接使いたい場合は、対応する skill や command を直接呼び出すこともできます。
例: `clarify-goals`、`doubt-list`、`court-review`、`dialectic`

## v2 で変わったこと

Agora はもはや debate harness を前面に出すプロダクトではありません。
今は次のことを支援する overlay です。
- 行動前に本当の意思決定を明確にする
- 反対意見を消さずに残す
- 出力を信頼する前に doubt list を作る
- 隠れた前提や継承されたカテゴリーを可視化する
- 人間の承認に向いた artifact を作る

哲学は装飾ではなく方法論です。
Dialectic、skeptic、genealogy、court review は roleplay ではなく実務フローです。

## Core skills と overlays

### Core skills
- clarify-goals
- frame-the-decision
- compare-options
- doubt-list
- assumption-audit
- minority-report
- decision-memo
- court-review

### Overlays
- dialectic — 戦略的 synthesis と ideation
- skeptic — 検証とリスクレビュー
- genealogy — 前提と価値の批判
- court — ガバナンスと承認構造

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
/plugin install --path .
/clarify "この曖昧なアイデアを具体的な brief にして"
/decide "2つの製品方針のどちらを選ぶべきか決めて"
```

### Hermes
```bash
hermes skills tap add malleus35/agora
hermes skills install skills-sh/malleus35/agora/skills/core/agora --category agora --yes
hermes skills install skills-sh/malleus35/agora/skills/core/clarify-goals --category agora --yes
hermes skills install skills-sh/malleus35/agora/skills/core/doubt-list --category agora --yes
hermes skills install skills-sh/malleus35/agora/skills/core/court-review --category agora --yes
hermes skills install skills-sh/malleus35/agora/skills/overlays/dialectic --category agora --yes
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

Agora v2.2.0 は skill-first overlay 方向の現行リリースです。
このリポジトリは次を提供します。
- reusable core skills
- explicit overlays
- low-friction commands
- artifact と supervision を中心に再設計された agent prompt

## Registry status

- Hermes / skills.sh: リポジトリからの直接 install を検証済み
- Hermes starter bundle 検証済み: agora、clarify-goals、doubt-list、court-review、dialectic
- ClawHub / OpenClaw: Node 22 上で CLI 動作と authenticated publish を検証済み
  - published slug 例: `agora-clarify-goals`
  - current version: `2.2.0`

## Documentation

- `docs/philosophy.md`
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
