# Agora

[English](README.md) | [한국어](README.ko.md) | [中文](README.zh.md) | 日本語

> エージェントは選択肢を生成し、Agora は人間が判断を監督できるようにする。

Agora は Claude Code と Codex のための skill-first workflow registry です。
レビュー可能な artifact が必要な agent work に clarification、doubt、dissent、synthesis、governance のワークフローを追加します。

Agora は再利用可能な reasoning command、レビュー可能な artifact、workflow registry、そして実用的な philosophical mode を提供します。
未検証または pending の provider は quick start に意図的に載せていません。

## Quick start

最も簡単な使い方は、共通エントリーポイントである `agora` から始めて、問題を自然言語で説明することです。

- Claude Code: `/agora "あなたの問題"`
- Codex: インストール後に `$agora "あなたの問題"`

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

### skills.sh CLI
```bash
npx skills add https://github.com/malleus35/agora --skill agora
```

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
- Codex: instruction ベースのインストール
- skills.sh CLI: GitHub URL ベースのインストール

## Current state

Agora v2.3.1 は skill-first workflow registry 方向の現行リリースです。
v2.3 workflow registry に Claude Code、Codex、skills.sh URL install の状態更新を加えたリリースです。
このリポジトリは次を提供します。
- reusable core skills
- enum-like modes
- required artifact fields を持つ workflow registry
- low-friction commands
- artifact と supervision を中心に再設計された agent prompt

## Registry status

- Local reinstall: 2026-05-06 時点で `~/.agents/skills` を `skills/core/*` から再リンクし、旧 callable overlay リンクを削除しました。
- Claude Code: `malleus35/agora` marketplace の追加が成功し、`agora@malleus35-agora` は v2.3.1 metadata release の準備ができています。
- Codex plugin marketplace: `malleus35/agora` marketplace の追加が成功しました。
- skills.sh CLI: URL-based discovery は `npx skills add https://github.com/malleus35/agora --skill agora --list` で検証済みです。想定 install command は `npx skills add https://github.com/malleus35/agora --skill agora` です。

## Documentation

- `docs/philosophy.md`
- `docs/modes.md`
- `docs/workflows.md`
- `docs/PRD-v3.md`
- `docs/recipes.md`
- `docs/install-claude-code.md`
- `docs/README.codex.md`
- `docs/examples/`
- `mcp/recommended-servers.md`

## License

MIT
