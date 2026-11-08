#!/bin/bash

# symlink global git config

# symlink
ln -fs "$HOME/lemonade/conf/git/.gitconfig" "$HOME/"

# git reads these from ~/.config/git by default, so .gitconfig needs no extra entries
mkdir -p "$HOME/.config/git"
ln -fs "$HOME/lemonade/conf/git/ignore" "$HOME/.config/git/ignore"
ln -fs "$HOME/lemonade/conf/git/allowed_signers" "$HOME/.config/git/allowed_signers"
