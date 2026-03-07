#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$HOME/.claude/skills"

if [[ "${1}" == "--uninstall" ]]; then
  echo "Unlinking pm-skills..."
  count=0
  while IFS= read -r -d '' file; do
    name=$(basename "$(dirname "$file")")
    target="$SKILLS_DIR/$name"
    if [[ -L "$target" ]] && [[ "$(readlink "$target")" == "$(dirname "$file")" ]]; then
      rm "$target"
      echo "  removed: $name"
      ((count++))
    fi
  done < <(find "$REPO_DIR" -maxdepth 2 -name "SKILL.md" -print0)
  echo ""
  echo "Done. Removed $count skill(s)."
  exit 0
fi

mkdir -p "$SKILLS_DIR"

echo "Installing pm-skills..."
count=0
while IFS= read -r -d '' file; do
  name=$(basename "$(dirname "$file")")
  ln -sf "$(dirname "$file")" "$SKILLS_DIR/$name"
  echo "  linked: $name"
  ((count++))
done < <(find "$REPO_DIR" -maxdepth 2 -name "SKILL.md" -print0)

echo ""
echo "Done. $count skill(s) installed to $SKILLS_DIR"
echo "Restart Claude Code to pick them up."
