# Installs brew cask which is used to install applications

# packages to install
java=(
  intellij-idea                                 # IDE when you cba terminal
)

apps=(
  aerial                                        # screensaver
  alfred                                        # utils
  alacritty                                     # superb terminal
  bartender                                     # bar upgrades
  datweatherdoe                                 # weather in bar
  dbeaver-community                             # db
  discord                                       # communication
  firefox                                       # firefox
  google-chrome                                 # chrome
  stats                                         # menu bar coolness
  insomnia                                      # dev (better postman)
  iterm2                                        # standard terminal
  latest                                        # always use bleeding edge
  libreoffice                                   # opensource office
  miro                                          # agile
  opera                                         # browser
  overkill                                      # don't open shiiiii
  postman                                       # dev
  robo-3t                                       # db
  signal                                        # communication
  skype                                         # communication
  sloth                                         # see trafic
  spotify                                       # utils
  sublime-text                                  # text editor
  twitch                                        # utils
  tidal                                         # utils
  vlc                                           # utils
)

# install packages
brew install --cask "${apps[@]}"
brew install --cask "${java[@]}"
