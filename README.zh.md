# Agora

[English](README.md) | [한국어](README.ko.md) | 中文 | [日本語](README.ja.md)

> Agent 负责生成选项，Agora 帮助人类监督判断。

Agora 是一个面向 Claude Code 与 Codex 的 skill-first workflow registry，用于监督式 AI 判断。
它为需要可审阅 artifact 的代理工作增加 clarification、doubt、dissent、synthesis、governance 工作流。

Agora 提供可复用的推理命令、可审阅的产物、workflow registry，以及哲学化但实用的 mode。
未验证或仍处于 pending 的 provider 不会出现在 quick start 中。

## Quick start

最简单的使用方式是先从统一入口 `agora` 开始，然后用自然语言描述你的问题。

- Claude Code: `/agora "你的问题"`
- Codex: 安装后使用 `$agora "你的问题"`

如果你想直接进入某个具体流程，也可以直接调用对应 skill 或 command。
例如：`clarify-goals`、`cartesian-grill`、`doubt-list`、`court-review`

## v2 的变化

Agora 不再首先把自己定位为 debate harness。
现在它首先是一个帮助团队完成以下任务的 overlay：
- 在行动前澄清真正的决策
- 保留异议而不是抹平异议
- 在信任输出之前先写 doubt list
- 逐个问题 grill 计划，使它达到可验证的清晰度
- 暴露隐藏假设与继承下来的分类框架
- 产出适合人工审批的 artifact

哲学不是装饰，而是方法。
Dialectic、skeptic、genealogy、court 不是 roleplay，而是决定 skill 执行方式的 mode。

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
Modes are not installed as skills. 它们是哲学判断姿态的 enum。
- dialectic — 战略综合与发散思考
- skeptic — 验证与风险审查
- genealogy — 假设与价值批判
- court — 治理与审批结构

### Workflow registry
`agora` 使用 workflow registry 将多个 core skill 按顺序连接。
详见 `docs/workflows.md`。

## Commands

- `/agora "prompt"` — 路由到合适的工作流
- `/clarify "prompt"` — 提取目的、约束、成功标准、未知项
- `/decide "prompt"` — 结构化真实分叉并输出 decision memo
- `/doubt "prompt"` — 生成笛卡尔式 doubt list 与验证计划
- `/dialectic "prompt"` — 进入黑格尔式综合模式
- `/steelman "prompt"` — 在批评前先重建对方最强版本
- `/assumption-audit "prompt"` — 暴露隐藏前提、继承分类与价值冲突
- `/minority-report "prompt"` — 保留未解决异议与 revisit trigger
- `/court-review "prompt"` — 分离 strategist/operator/censor/historian/sovereign 视角

## Host quick start

### Claude Code
```bash
/plugin marketplace add malleus35/agora
/plugin install agora@malleus35-agora
/clarify "把这个模糊想法变成明确 brief"
/decide "在两个产品方向之间做选择"
```

### skills.sh CLI
```bash
npx skills add https://github.com/malleus35/agora --skill agora
```

### Codex
对 Codex 说：
```text
Fetch and follow instructions from https://raw.githubusercontent.com/malleus35/agora/refs/heads/main/.codex/INSTALL.md
```
安装后，最简单的入口是：
```text
$agora "你的问题"
```

## Installation

不同宿主的安装方式不同：
- Claude Code：plugin
- Codex：基于 instruction 的安装
- skills.sh CLI：基于 GitHub URL 的安装

## Current state

Agora v2.3.1 是当前 skill-first workflow registry 方向的正式版本。
它包含 v2.3 workflow registry，并补充了 Claude Code、Codex、skills.sh URL install 的状态刷新。
当前仓库提供：
- 可复用的 core skills
- enum-like modes
- 带有明确 artifact 字段的 workflow registry
- 低摩擦命令入口
- 以 artifact 与 supervision 为中心修订过的 agent prompt

## Registry status

- Local reinstall：截至 2026-05-06，`~/.agents/skills` 已从 `skills/core/*` 重新链接，旧 callable overlay 链接已移除。
- Claude Code：`malleus35/agora` marketplace 添加成功，`agora@malleus35-agora` 已准备好 v2.3.1 metadata release。
- Codex plugin marketplace：`malleus35/agora` marketplace 添加成功。
- skills.sh CLI：URL-based discovery 已用 `npx skills add https://github.com/malleus35/agora --skill agora --list` 验证；预期安装命令是 `npx skills add https://github.com/malleus35/agora --skill agora`。

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
