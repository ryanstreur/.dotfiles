################################################################################
#
# https://docs.brew.sh/
#
#
# MS Apps to Install
# - Teams
# - Office Suite
# General Apps
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

brew install --cask microsoft-office \
  microsoft-teams \
  zotero
# brew install --cask teamviewer
# brew install --cask slack


# Browsers
brew install --cask firefox \
  brave-browser \
  gooogle-chrome

brew install --cask android-studio
brew install --cask qgis
brew install --cask 1password

# brew install --cask virtualbox
# brew install --cask vagrant

brew install \
  python \
	tmux \
  gdal \
  deno \
  node \
  bat \
  ripgrep \
  universal-ctags \
  wget \
  telnet \
  lua \
  luarocks \
  postgresql \
  postgis \
  c-blosc \
  mysql # required for rmove

# c-blosc required for mac os catalina to pip install tables
# https://github.com/PyTables/PyTables/issues/828

brew install \
  # https://ctags.io/



# may need MS remote desktop?
# brew install --cask microsoft-remote-desktop
brew install --cask 
  pgadmin4 # https://www.pgadmin.org/

