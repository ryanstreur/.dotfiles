#!/bin/bash

################################################################################
# Install Apt Dependencies
################################################################################

sudo apt-get update
sudo apt-get install zsh curl

################################################################################
# Neovim
# https://github.com/neovim/neovim/wiki/Installing-Neovim#debian
# It also says python-neovim and python3-neovim are available,
# but I don't see them when I try to install them here.
################################################################################

sudo apt-get install neovim exuberant-ctags


################################################################################
# NVM
# https://github.com/nvm-sh/nvm
################################################################################

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

# gtags

sudo apt install -y libncurses5-dev
