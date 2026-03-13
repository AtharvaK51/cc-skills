# Claude Code Skills

My Claude Code configuration — global instructions, settings, and skills.

## What's included

- **CLAUDE.md** — Global instructions (LSP-first code navigation, gstack skills)
- **settings.json** — Model, plugins, and environment config
- **gstack** — Installed via setup (browse, review, ship, retro, plan reviews)

## Plugins

- `frontend-design` — Production-grade frontend UI generation
- `pyright-lsp` — Python type checking via Pyright
- `commit-commands` — Git commit/push/PR workflows

## Setup

```bash
git clone <this-repo> ~/cc-skills
cd ~/cc-skills
chmod +x setup.sh
./setup.sh
```

This will copy config to `~/.claude/` and install gstack.
