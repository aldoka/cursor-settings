# rule

Creating a new cursor rule following standards from [rules.mdc](../../rules/documentation/rules.mdc).

## Instructions

Create a new cursor rule (`.mdc` file) in the `rules/` directory following best practices and project standards.

**Before creating a rule, AI should:**

1. **Clarify details**: Determine independently and clarify with user if unclear:
   - Rule name (will be used as filename in kebab-case)
   - Rule purpose and scope (what area it should cover)
   - Target directory (e.g., `backend/python/fastapi/`, `utilities/`, `documentation/`)
   - Related rules (if any, for links)
   - File patterns for `globs` (if rule should apply to specific files)
   - Whether rule should always apply (`alwaysApply: true/false`)

2. **Check if similar rules already exist** in project or globally, warn user for dublication

3. **Create structure** described in rules.mdc

4. **Follow standards** from rules.mdc

## Creation Steps

Following instructions from rules.mdc:

1. **Determine name**
2. **Determine directory**
3. **Create file**
4. **Add content**
5. **Verify compliance** following checklist from `rules.mdc`

## What to Ask User

If details are unclear, ask user:

1. **Rule name and purpose**: "What should this rule be called and what should it cover?"
2. **Target files**: "Which files should this rule apply to? (for globs)"
3. **Always apply**: "Should this rule always be active or only for specific files?"
4. **Related rules**: "Are there related rules this should link to?"
5. **Examples needed**: "What specific examples should be included?"
6. **Dublication warning**: "Similar rule already exists in project or globally. Do you want to create it anyway?"

## Constraints

- DO NOT create rules without clarifying unclear details with user
- DO NOT use abstract formulations ("how to write code")
- DO NOT create rules that duplicate existing rules
- DO NOT forget YAML frontmatter
- DO NOT use unclear file names
- DO NOT create rules without code examples
- DO NOT forget to include both DO and DON'T sections

## Rule Creation Checklist

Before completion, ensure:

- [ ] YAML frontmatter with `description` is created
- [ ] Correct `globs` are specified (if needed)
- [ ] Rule is focused on one topic
- [ ] Examples of correct code (✅) are included
- [ ] Examples of incorrect code (❌) are included
- [ ] Emojis are used for sections
- [ ] Code examples are complete and working
- [ ] File has descriptive name in kebab-case
- [ ] File is placed in correct directory
- [ ] Rule doesn't duplicate existing rules
- [ ] Key Points section is added
- [ ] Links to related rules are added (if any)

## Links

Follow standards from [rules.mdc](../../rules/documentation/rules.mdc) for creating cursor rules.