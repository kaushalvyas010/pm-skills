#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMMANDS_DIR="$HOME/.claude/commands"

if [[ "${1}" == "--uninstall" ]]; then
  echo "Unlinking pm-skills commands..."
  count=0
  while IFS= read -r -d '' file; do
    name="$(basename "$file")"
    target="$COMMANDS_DIR/$name"
    real="$(python3 -c "import os,sys; print(os.path.realpath(sys.argv[1]))" "$file")"
    if [[ -L "$target" ]] && [[ "$(readlink "$target")" == "$real" ]]; then
      rm "$target"
      echo "  removed: $name"
      ((count++))
    fi
  done < <(find "$REPO_DIR" -path "*/commands/*.md" -print0)
  echo ""
  echo "Done. Removed $count command(s)."
  exit 0
fi

mkdir -p "$COMMANDS_DIR"

echo "Installing pm-skills commands..."
count=0
while IFS= read -r -d '' file; do
  name="$(basename "$file")"
  # Resolve through symlinks so ~/.claude/commands points at the real SKILL.md
  real="$(python3 -c "import os,sys; print(os.path.realpath(sys.argv[1]))" "$file")"
  ln -sf "$real" "$COMMANDS_DIR/$name"
  echo "  linked: $name"
  ((count++))
done < <(find "$REPO_DIR" -path "*/commands/*.md" -print0)

echo ""
echo "Done. $count command(s) installed to $COMMANDS_DIR"
echo "Restart Claude Code to pick them up."
