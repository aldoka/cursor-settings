# rule

Creating a new cursor rule following standards.

## Instructions

**IMPORTANT: Before starting, read the complete guide:** [rules.mdc](../../rules/rules/rules.mdc)

This command creates a new cursor rule (`.mdc` file) in the `rules/` directory. All detailed requirements, best practices, creation process, checklist, and constraints are defined in the rule documentation.

**Before creating a rule, AI must:**

1. **Read the rule guide**: Read [rules.mdc](../../rules/rules/rules.mdc) completely to understand all requirements
2. **Research**: Research modern best practices for the technology/topic
3. **Decide structure**: Determine if rule should be single file or folder with multiple files
4. **Clarify with user**: Ask user if any details are unclear (name, purpose, directory, globs, framework-agnostic requirement)
5. **Check duplication**: Verify no similar rules exist
6. **Create rule**: Follow the process and checklist from [rules.mdc](../../rules/rules/rules.mdc)

## Quick Reference

- **Rule location**: `rules/` directory
- **File format**: `.mdc` with YAML frontmatter
- **Naming**: kebab-case (e.g., `html.mdc`, `fastapi-settings.mdc`)
- **Required sections**: Overview, Table of Contents, Core Principles, Do, Don't, Key Points, References

## Constraints

- DO NOT create rules without reading [rules.mdc](../../rules/rules/rules.mdc) first
- DO NOT duplicate information - refer to the rule guide for all details
- DO NOT skip research phase
- DO NOT create rules without clarifying unclear details with user

## Links

All detailed information is in [rules.mdc](../../rules/rules/rules.mdc):
- Complete creation process (6 phases)
- Detailed checklist
- Best practices and anti-patterns
- Framework-agnostic guidelines
- AI agent optimization tips
- Special cases and constraints
