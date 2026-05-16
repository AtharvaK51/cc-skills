# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is a dotfiles-style repo for Claude Code configuration. It stores global instructions (`CLAUDE.md`), settings (`settings.json`), and a setup script that installs everything to `~/.claude/`.

`setup.sh` copies `CLAUDE.md` and `settings.json` to `~/.claude/` and installs gstack. It backs up existing files before overwriting. To test changes: `./setup.sh`.

When editing this file, remember it is both the project CLAUDE.md *and* the global `~/.claude/CLAUDE.md` that gets installed.

---

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
