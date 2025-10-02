# Installs brew cask which is used to install applications

apps=(
  discord                                       # communication
  firefox                                       # firefox
  google-chrome                                 # chrome
  ghostty                                       # default terminal
  insomnia                                      # dev (better postman)
  iterm2                                        # standard terminal
  latest                                        # always use bleeding edg
  miro                                          # agile
  overkill                                      # don't open shiiiii
  signal                                        # communication
  sloth                                         # see trafic
  spotify                                       # utils
  sublime-text                                  # text editor
  vlc                                           # utils
  wezterm                                       # cooler iterm
)

# install packages
brew install --cask "${apps[@]}"
