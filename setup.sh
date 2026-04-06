#!/usr/bin/env bash

set -e

INSTALL_DIR="$(cd "$(dirname "$0")" && pwd)"
GLOBAL_SKILLS_DIR="$HOME/.claude/skills"

echo "Setting up CoachMi skills for Claude Code..."

# Ensure the global skills directory exists
mkdir -p "$GLOBAL_SKILLS_DIR"

# Link each skill
for skill_dir in "$INSTALL_DIR"/skills/*; do
    if [ -d "$skill_dir" ]; then
        skill_name="$(basename "$skill_dir")"
        target_link="$GLOBAL_SKILLS_DIR/$skill_name"
        
        # Remove existing symlink or directory to prevent conflicts
        if [ -L "$target_link" ] || [ -d "$target_link" ]; then
            rm -rf "$target_link"
        fi
        
        # Create new absolute symlink
        ln -snf "$skill_dir" "$target_link"
        echo "✅ Linked /$skill_name"
    fi
done

echo ""
echo "🎉 CoachMi installation complete!"
echo "You can now use these commands in any Claude Code project without a namespace:"
echo "  /coachmi"
echo "  /menuexplorer"
echo "  /trenddebunker"
echo "  /pantrytoplate"
echo "  /nearby"
echo ""
