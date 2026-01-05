# command

Creating a new cursor command following standards from [commands.mdc](../../rules/documentation/commands.mdc).

## Instructions

Create a new cursor command (`.md` file) in the `commands/` directory following best practices and project standards.

**Before creating a command, AI should:**

1. **Clarify details**: Determine independently and clarify with user if unclear:
   - Command name (will be used as filename in kebab-case)
   - Command purpose (what it should do)
   - Target directory (e.g., `utilities/`, `development/`, `testing/`)
   - Related rules (if any, for links)
   - Dublication warning (if command already exists)

2. **Check if similar commands already exist** in project or globally, warn user for dublication

3. **Create structure** described in commands.mdc

4. **Follow standards** from commands.mdc

## Creation Steps

Following instructions from commands.mdc:

1. **Determine name**
2. **Determine directory**
3. **Create file**
4. **Add content**
5. **Verify compliance** following checklist from `commands.mdc`

## Constraints

- DO NOT create commands without clarifying unclear details with user
- DO NOT use abstract formulations ("improve", "do well")
- DO NOT create commands that perform multiple unrelated tasks
- DO NOT forget links to related rules (if any)
- DO NOT use unclear file names

## Command Creation Checklist

Before completion, ensure:

- [ ] File has descriptive name in kebab-case
- [ ] Command starts with H1 heading
- [ ] Brief description of purpose is included (1-2 sentences)
- [ ] Instructions are specific and clear
- [ ] Imperative style is used
- [ ] Execution steps are specified (if command is complex)
- [ ] Constraints are added (what not to do)
- [ ] Checklist for verification is included
- [ ] Links to related rules are added (if any)
- [ ] Command is focused on one task
- [ ] File is placed in correct directory
- [ ] Command follows standards from `commands.mdc`

## Links

Follow standards from [commands.mdc](../../rules/documentation/commands.mdc) for creating cursor commands.