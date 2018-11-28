#!/bin/bash

# install Homebrew and some of the common dependencies needed/desired for software development

# ask for the administrator password upfront
sudo -v

# check for Homebrew and install it if missing
if test ! "$(which brew)"
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# upgrade any already-installed formulae
brew upgrade

# packages to install
apps=(
  coreutils                                     # utils
  cowsay                                        # funnier term
  curl                                          # utils
  diff-so-fancy                                 # git diff
  fasd                                          # utils - navigate directories fast, like autojump, z
  fortune                                       # funnier term
  fzf                                           # utils - terminal fuzzy finder
  git                                           # utils
  git-flow                                      # git branching
  lolcat                                        # funnier term
  pyenv                                         # used for neovim
  pyenv-virtualenv                              # used for neovim
  neovim/neovim/neovim                          # editor
  ranger                                        # terminal - file manager
  ripgrep                                       # utils - search fast
  shellcheck                                    # shell linter
  telnet                                        # communication tool to see ports opened
  tmux                                          # yet to learn
  thefuck 				                            	# spell correction
  wget                                          # utils
  zsh                                           # shell
)

java=(
  ant                                           # buildtool
  docker                                        # container
  gradle                                        # buildtool
  jenv                                          # java version
  kotlin                                        # cooler java
  maven                                         # buildtool
  sbt                                           # scala buildtool
  scala                                         # cooler java
  vagrant                                       # container somewhat .........
  virtualbox                                    # container somewhat .........
)

fun=(
  ffmpeg                                        # utils - make videos
  gifsicle                                      # utils - make gifs
  htop                                          # utils - monitor processes
  neofetch                                      # utils - print system information
)

brew tap homebrew/versions

# make sure we’re using the latest Homebrew
brew update

# install packages
brew install "${apps[@]}"

# remove outdated versions from the cellar
brew cleanup
