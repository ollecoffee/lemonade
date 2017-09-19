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
  curl                                          # utils
  fasd                                          # utils - navigate directories fast, like autojump, z
  fzf                                           # utils - terminal fuzzy finder
  git                                           # utils
  neovim                                        # editor
  ranger                                        # terminal - file manager
  ripgrep                                       # utils - search fast
  shellcheck                                    # shell linter
  thefuck 					# spell correction
  wget                                          # utils
  wifi-password                                 # utils - show the wifi-password in terminal
  zsh                                           # shell
  zsh-syntax-highlighting			# highlighter
)

fun=(
  ffmpeg                                        # utils - make videos
  gifsicle                                      # utils - make gifs
  htop                                          # utils - monitor processes
  neofetch                                      # utils - print system information
)

brew tap homebrew/services

brew tap universal-ctags/universal-ctags

# make sure we’re using the latest Homebrew
brew update

# install packages
brew install "${apps[@]}"

# remove outdated versions from the cellar
brew cleanup

# Installs brew cask which is used to install applications

# install cask
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# packages to install
apps=(
  discord                                       # communication
  postman                                       # dev
  skype                                         # communication
  slack                                         # communication
  spotify                                       # utils
  tidal                                         # utils
  vlc                                           # utils
)

# install packages
brew cask install "${apps[@]}"

# quick look plugins
# see: https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
