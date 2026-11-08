#!/bin/bash

# mkdir first, or ln fails on a fresh machine
mkdir -p "$HOME/.config/nvim"
ln -fs "$HOME/lemonade/conf/vim/init.vim" "$HOME/.config/nvim/init.vim"
