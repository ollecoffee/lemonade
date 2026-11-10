#!/bin/bash

apps=(
  1password
  android-studio
  chatgpt
  claude
  discord                                       # communication
  firefox                                       # firefox
  flutter                                       # .zshrc puts its bin on PATH
  font-fira-code-nerd-font                      # ghostty's font, or it falls back to a plain one
  font-jetbrains-mono-nerd-font
  gcloud-cli                                    # via brew, so brew upgrade keeps it current
  google-chrome                                 # chrome
  ghostty                                       # default terminal
  headlamp
  insomnia                                      # dev (better postman)
  iterm2                                        # standard terminal
  jetbrains-toolbox                             # manages IntelliJ, so no intellij-idea cask
  latest                                        # always use bleeding edg
  linear-linear
  miro                                          # agile
  orbstack
  sloth                                         # see trafic
  spotify                                       # utils
  sublime-text                                  # text editor
  visual-studio-code
  vlc                                           # utils
  wezterm                                       # cooler iterm
  yaak
  zoom
)

# --adopt, so apps first installed by hand get taken over instead of failing the run
brew install --cask --adopt "${apps[@]}"
