# Global Claude Code Instructions

## Code Navigation

Prefer LSP tools over Grep for any code navigation task:
- Use workspaceSymbol to find symbols by name
- Use goToDefinition to find where something is defined
- Use findReferences to find all call sites
- Use hover to check type signatures
- Use diagnostics after any edit to catch type errors immediately

Use Grep only for text search: log messages, comments, config values, string literals. Never use Grep to find function definitions or class declarations.

## gstack

For all web browsing, use the /browse skill from gstack. Never use mcp__claude-in-chrome__* tools.

Available skills:
- /plan-ceo-review — CEO-level plan review
- /plan-eng-review — Engineering plan review
- /review — Code review
- /ship — Ship workflow
- /browse — Web browsing
- /retro — Retrospective
