# Recommended MCP Servers for Agora v2

Agora v2 does not require MCP to be useful.
It works first as a skill-first overlay through commands, skills, and agent prompts.

MCP is an optional augmentation layer.
Use it when better context access or external system connectivity improves judgment quality.

## Selection principle

Choose MCP servers that improve one of these:
- clarification quality
- evidence access
- artifact durability
- governance traceability
- host integration ergonomics

Do not add MCP servers just because they exist.
A noisy tool surface makes judgment worse.

## Recommended categories

### 1. Repository and code context

Use when Agora is helping with codebase decisions, reviews, or architecture debates.

Recommended capabilities:
- structured repository read access
- symbol or code navigation
- issue / PR retrieval

Why it helps Agora:
- better decision framing from real code context
- stronger doubt lists grounded in actual implementation state
- more credible decision memos and minority reports

## 2. Document and knowledge-base access

Use when the team stores product context outside the repo.

Recommended capabilities:
- docs/wiki lookup
- note system access
- project brief retrieval

Why it helps Agora:
- Socratic clarification can pull real constraints
- court review can use institutional memory
- genealogy can inspect inherited terminology and policy language

## 3. Task and project systems

Use when decisions must map to owners, approvals, or follow-up work.

Recommended capabilities:
- issue tracker access
- project board access
- milestone lookup

Why it helps Agora:
- decision memos can connect to real owners and timelines
- court review can name accountable operators and sovereign approvers
- minority reports can attach revisit triggers to actual project checkpoints

## 4. External research and evidence retrieval

Use when a decision depends on outside evidence, competitors, security guidance, or market context.

Recommended capabilities:
- web search
- document fetch
- benchmark or paper retrieval

Why it helps Agora:
- Descartes can classify claims more accurately
- Hegelian synthesis can be constrained by real evidence rather than style
- Nietzschean genealogy can inspect category language in the wild

## 5. Communication and approval channels

Use when artifacts must move into real approval or governance workflows.

Recommended capabilities:
- messaging or chat delivery
- email drafting or sending
- approval record systems

Why it helps Agora:
- court review becomes actionable rather than purely internal
- decision artifacts can move to the actual approver
- dissent can be preserved where teams already work

## Suggested starter stack

If you want a lightweight setup, start with only:
1. repo context MCP
2. docs/knowledge-base MCP
3. issue tracker MCP

That is usually enough to improve:
- `/clarify`
- `/decide`
- `/doubt`
- `/court-review`

## Host-specific note

Agora is host-agnostic.
MCP selection should follow the host's strengths and the team's existing workflow.

- Claude Code host: prefer repo, docs, and issue tracker context first
- OpenCode host: prefer command-discoverable MCPs that map cleanly to overlay workflows
- Codex or other hosts: prefer the smallest MCP surface that improves evidence access

## Anti-patterns

Do not:
- install many MCP servers before the core workflows are adopted
- confuse tool abundance with judgment quality
- rely on MCP to compensate for unclear commands or weak artifact design
- make Agora feel like a replacement runtime

## Practical rule

Start without MCP.
Add it only where it makes artifacts more grounded, reviewable, or governable.
