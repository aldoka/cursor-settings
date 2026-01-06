# command

Creating a new cursor command following standards.

## Instructions

**IMPORTANT: Before starting, read the complete guide:** [commands.mdc](../rules/documentation/commands.mdc)

This command creates a new cursor command (`.md` file) in the `commands/` directory. All detailed requirements, best practices, creation process, checklist, and constraints are defined in the command documentation.

**Before creating a command, AI must:**

1. **Read the command guide**: Read [commands.mdc](../rules/documentation/commands.mdc) completely to understand all requirements
2. **Clarify with user**: Ask user if any details are unclear (name, purpose, directory, related rules)
3. **Check duplication**: Verify no similar commands exist
4. **Create command**: Follow the process and checklist from [commands.mdc](../rules/documentation/commands.mdc)

## Quick Reference

- **Command location**: `commands/` directory
- **File format**: `.md` without frontmatter
- **Naming**: kebab-case (e.g., `commit.md`, `code-review.md`)
- **Required**: H1 heading, brief description, clear instructions, constraints
- **Rule references**: Can reference single rule, multiple rules, or conditional rules based on context

## Constraints

- DO NOT create commands without reading [commands.mdc](../rules/documentation/commands.mdc) first
- DO NOT duplicate information - refer to the command guide for all details
- DO NOT use abstract formulations ("improve", "do well")
- DO NOT create commands that perform multiple unrelated tasks

## Multiple Rules Support

Commands can reference multiple rules when needed:

**Single rule:**
```markdown
**IMPORTANT: Before starting, read:** [rule-name.mdc](../rules/path/rule-name.mdc)
```

**Multiple rules (conditional):**
```markdown
**IMPORTANT: Read rule based on context:**
- **Context A**: Read [rule-a.mdc](../rules/path/rule-a.mdc)
- **Context B**: Read [rule-b.mdc](../rules/path/rule-b.mdc)
```

**Multiple rules (all required):**
```markdown
**IMPORTANT: Read all relevant rules:**
1. Read [rule-1.mdc](../rules/path/rule-1.mdc)
2. Read [rule-2.mdc](../rules/path/rule-2.mdc)
```

## Links

All detailed information is in [commands.mdc](../rules/documentation/commands.mdc):
- Complete creation process
- Detailed checklist
- Best practices and anti-patterns
- Instruction writing style
- Examples of good commands
- Linking to rules (single, multiple, conditional)
