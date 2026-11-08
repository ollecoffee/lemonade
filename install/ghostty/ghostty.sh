#!/bin/bash

# mkdir first, or ln fails on a fresh machine
mkdir -p "$HOME/.config/ghostty"
ln -fs "$HOME/lemonade/conf/ghostty/config" "$HOME/.config/ghostty/config"
