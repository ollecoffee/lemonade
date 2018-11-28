# Installs brew cask which is used to install applications

# install cask
brew tap caskroom/cask

# packages to install
java=(
  intellij-idea                                 # IDE when you cba terminal
  java                                          # good old java
)

apps=(
  alfred                                        # utils
  alacritty                                     # superb terminal
  bartender                                     # bar upgrades
  discord                                       # communication
  firefox                                       # firefox
  firefoxnightly                                # firefox on the edge
  google-chrome                                 # chrome
  google-chrome-canary                          # chrome on the edge
  insomnia                                      # dev (better postman)
  istat-menus                                   # bar upgradez
  iterm2-nightly                                # standard terminal
  opera                                         # browser
  postman                                       # dev
  signal                                        # communication
  skype                                         # communication
  slack                                         # communication
  spotify                                       # utils
  twitch                                        # utils
  tidal                                         # utils
  vlc                                           # utils
)

# install packages
brew cask install "${apps[@]}"

# quick look plugins
# see: https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
