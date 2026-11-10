#!/bin/bash

# install Homebrew and some of the common dependencies needed/desired for software development

# ask for the administrator password upfront
# sudo -v

# check for Homebrew and install it if missing
if test ! "$(which brew)"
then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

# upgrade any already-installed formulae
brew upgrade

# packages to install
apps=(
  coreutils                                     # utils
  curl                                          # utils
  diff-so-fancy                                 # git diff
  zoxide                                        # utils - navigate directories fast, like autojump, z
  fortune                                       # funnier term
  fzf                                           # utils - terminal fuzzy finder
  git                                           # utils
  lolcat                                        # funnier term
  neovim                                        # editor
  ranger                                        # terminal - file manager
  ripgrep                                       # utils - search fast
  starship                                      # terminal magix
  shellcheck                                    # shell linter
  telnet                                        # communication tool to see ports opened
  tmux                                          # yet to learn
  thefuck                                       # spell correction
  wget                                          # utils
  zsh                                           # shell
  direnv                                        # .zshrc loads it, so a fresh shell errors without it
  eza                                           # .zshrc loads it, so a fresh shell errors without it
  nvm                                           # .zshrc loads it, so a fresh shell errors without it
  postgresql@15                                 # .zshrc loads it, so a fresh shell errors without it
  zsh-syntax-highlighting                       # .zshrc loads it, so a fresh shell errors without it
  mas                                           # install/mas needs it to install App Store apps
  gh
  jq
)

dev=(
  cocoapods
  deno
  fvm
  node@24                                       # pinned to the LTS line, not whatever node is latest
  poetry
  postgresql@18
  rust
  xcodegen
  yarn
)

infra=(
  grpcurl
  hashicorp/tap/terraform                       # HashiCorp's tap, since core froze terraform at 1.5.7 after the license change
  helm
  k9s
  kubectx
  kubernetes-cli
  kubie
  protoc-gen-grpc-java
)

fun=(
  ansible                                       # automation
  docker                                        # container
  gradle                                        # buildtool
  jenv                                          # java version
  kotlin                                        # cooler java
  maven                                         # buildtool
  sbt                                           # scala buildtool
  scala                                         # cooler java
)

utils=(
  ffmpeg                                        # utils - make videos
  gifsicle                                      # utils - make gifs
  htop                                          # utils - monitor processes
)

# make sure we’re using the latest Homebrew
brew update

# install packages
brew install "${apps[@]}"
brew install "${dev[@]}"
brew install "${infra[@]}"
brew install "${fun[@]}"
brew install "${utils[@]}"

# remove outdated versions from the cellar
brew cleanup
