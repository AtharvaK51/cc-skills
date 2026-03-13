#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "Setting up Claude Code configuration..."

# Create ~/.claude if it doesn't exist
mkdir -p "$CLAUDE_DIR"

# Copy CLAUDE.md (global instructions)
if [ -f "$CLAUDE_DIR/CLAUDE.md" ]; then
  echo "  ~/.claude/CLAUDE.md already exists — backing up to CLAUDE.md.bak"
  cp "$CLAUDE_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md.bak"
fi
cp "$SCRIPT_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md"
echo "  Installed CLAUDE.md"

# Copy settings.json
if [ -f "$CLAUDE_DIR/settings.json" ]; then
  echo "  ~/.claude/settings.json already exists — backing up to settings.json.bak"
  cp "$CLAUDE_DIR/settings.json" "$CLAUDE_DIR/settings.json.bak"
fi
cp "$SCRIPT_DIR/settings.json" "$CLAUDE_DIR/settings.json"
echo "  Installed settings.json"

# Install gstack
if [ -d "$CLAUDE_DIR/skills/gstack" ]; then
  echo "  gstack already installed — pulling latest"
  cd "$CLAUDE_DIR/skills/gstack" && git pull && ./setup
else
  echo "  Installing gstack..."
  git clone https://github.com/garrytan/gstack.git "$CLAUDE_DIR/skills/gstack"
  cd "$CLAUDE_DIR/skills/gstack" && ./setup
fi

echo ""
echo "Done! Claude Code is configured."
echo "  - Global instructions: ~/.claude/CLAUDE.md"
echo "  - Settings: ~/.claude/settings.json"
echo "  - Skills: gstack (browse, review, ship, retro, plan-ceo-review, plan-eng-review)"
