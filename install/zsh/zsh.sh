#!/bin/bash

# install oh-my-zsh, zsh-syntax-highlighting, base16-shell
# set zsh to default shell
# symlink zsh-theme and .zshrc

# install oh-my-zsh
# https://github.com/robbyrussell/oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# install zsh-syntax-highlighting to oh-my-zsh custom plugins
# https://github.com/zsh-users/zsh-syntax-highlighting.git
mkdir -p "$HOME/.oh-my-zsh/custom/plugins/"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
git clone https://github.com/wbinglee/zsh-wakatime.git "$HOME/.oh-my-zsh/custom/plugins/zsh-wakatime"

# set default shell to zsh
chsh -s "$(which zsh)"

# symlink
ln -fs "$HOME/lemonade/conf/zsh/.zshrc" "$HOME/"

# restart for changes to take effect
exec zsh
