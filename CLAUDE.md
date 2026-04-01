# Agora — Project Guide

This project is the **Agora** multi-agent debate harness, distributed as a Claude Code plugin.

## Development

- Agent prompts: `agents/*.md`
- Debate protocol skill: `skills/agora-debate/SKILL.md`
- Entry command: `commands/agora.md`
- Plugin manifest: `.claude-plugin/plugin.json`

## Testing

Install locally to test: `/plugin install --path .`
Then verify agents are discoverable: `@socrates`, `@hegel`, etc.

## Response Language

Always respond in Korean (한국어) unless the user explicitly requests otherwise.
