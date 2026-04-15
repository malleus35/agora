# Skeptic Example

## Prompt

```bash
/doubt "Review this architecture proposal before implementation and list what must be verified first"
```

## Example output

```markdown
## Doubt List

### Object of Review
- Proposed architecture for a shared-spec overlay across multiple host agents.

### Claim Classification
- "Adapters will keep maintenance low" -> Inference
- "The shared spec will prevent drift" -> Guess
- "This is easier for new contributors" -> Guess

### Happy Path Doubts
- Doubt: Does the adapter layer actually reduce duplication?
- Verification: Compare change surfaces across two host integrations.

### Edge Case Doubts
- Doubt: What happens when one host cannot represent a shared primitive cleanly?
- Verification: Run a mismatch inventory on Claude Code, Codex, and OpenCode.

### Boundary Doubts
- Doubt: What breaks when the shared spec grows beyond a small set of commands?
- Verification: Simulate a larger command and skill matrix.

### Evil Demon Scenarios
- Doubt: What if the spec itself becomes the source of drift?
- Verification: Test a change that requires incompatible host behavior.

### Release Posture
- Proceed with conditions
```
