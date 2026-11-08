#!/bin/bash
# Every step is idempotent, so re-running it repairs a half-finished setup
set -u

# The link scripts point at ~/lemonade, so a clone anywhere else would link to nothing
if [ "$(cd "$(dirname "$0")" && pwd -P)" != "$(cd "$HOME/lemonade" 2>/dev/null && pwd -P)" ]; then
  echo "Clone lemonade to ~/lemonade first: git clone git@github.com:ollecoffee/lemonade.git ~/lemonade" >&2
  exit 1
fi
cd "$HOME/lemonade" || exit 1

steps=(
  install/brew/brew.sh        # first, everything below needs Homebrew
  install/brew/brew-cask.sh
  install/zsh/zsh.sh
  install/git/git.sh
  install/tmux/tmux.sh
  install/vim/neovim.sh
  install/ghostty/ghostty.sh
)

# Keep going on failure, so one already-installed app doesn't stop the links from being made
failed=()
for step in "${steps[@]}"; do
  echo "==> $step"
  bash "$step" || failed+=("$step")
done

if [ ${#failed[@]} -gt 0 ]; then
  printf 'Failed: %s\n' "${failed[@]}" >&2
  exit 1
fi
echo "Done. Open a new terminal to load the new shell config."
