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
  insomnia                                      # dev (better postman)
  istat-menus                                   # bar upgradez
  iterm2                                        # standard terminal
  opera                                         # browser
  postman                                       # dev
  signal                                        # communication
  skype                                         # communication
  spotify                                       # utils
  twitch                                        # utils
  tidal                                         # utils
  vlc                                           # utils
)

# install packages
brew cask install "${apps[@]}"
brew cask install "${java[@]}"

# quick look plugins
# see: https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package
