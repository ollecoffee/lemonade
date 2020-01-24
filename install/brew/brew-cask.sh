# Installs brew cask which is used to install applications

# install cask
brew tap caskroom/cask

# packages to install
java=(
  intellij-idea                                 # IDE when you cba terminal
  java                                          # good old java
)

apps=(
  aerial                                        # screensaver
  alfred                                        # utils
  alacritty                                     # superb terminal
  bartender                                     # bar upgrades
  discord                                       # communication
  firefox                                       # firefox
  google-chrome                                 # chrome
  iglance                                       # menu bar coolness
  insomnia                                      # dev (better postman)
  istat-menus                                   # bar upgradez
  iterm2                                        # standard terminal
  latest                                        # always use bleeding edge
  opera                                         # browser
  overkill                                      # don't open shiiiii
  postman                                       # dev
  signal                                        # communication
  skype                                         # communication
  sloth                                         # see trafic
  spotify                                       # utils
  twitch                                        # utils
  tidal                                         # utils
  vlc                                           # utils
)

# install packages
brew cask install "${apps[@]}"
brew cask install "${java[@]}"
