#!/bin/bash

# set default shell to zsh
chsh -s "$(which zsh)"

# symlink
ln -fs "$HOME/lemonade/conf/zsh/.zshrc" "$HOME/"

# restart for changes to take effect
exec zsh
