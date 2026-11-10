#!/bin/bash

# Skip when present: it updates itself, so re-running the installer adds nothing
if [ -x "$HOME/.local/bin/claude" ]; then
  echo "Claude Code already installed ($("$HOME/.local/bin/claude" --version))"
  exit 0
fi

# Native installer rather than the brew cask, which lags behind releases
curl -fsSL https://claude.ai/install.sh | bash
