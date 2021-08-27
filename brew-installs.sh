################################################################################
#
# https://docs.brew.sh/
#
#
# MS Apps to Install
# - Teams
# - Office Suite
# General Apps
# - Pyenv
# - Vagrant
# - Docker
#
################################################################################

# https://formulae.brew.sh/cask/iterm2#default
brew install --cask iterm2

# Source control
brew install subversion

# Editors
brew install neovim
brew install --cask visual-studio-code
brew install --cask emacs

brew install --cask microsoft-office
brew install --cask microsoft-teams
brew install --cask teamviewer
# brew install --cask slack

# Browsers
brew install --cask google-chrome
brew install --cask brave-browser
brew install --cask firefox

brew install --cask android-studio
brew install --cask qgis
brew install --cask 1password

# brew install --cask virtualbox
# brew install --cask vagrant

brew install \
	pyenv \
	nvm \
	tmux \
  # gdal \
  ripgrep

brew install \
  # https://ctags.io/
  universal-ctags


# may need MS remote desktop?
# brew install --cask microsoft-remote-desktop
brew install --cask \
  pgadmin4
  
