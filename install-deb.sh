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
# Pyenv
# https://github.com/pyenv/pyenv-installer
################################################################################

# Apt Depenedencies
# https://github.com/pyenv/pyenv/wiki/Common-build-problems
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
  xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

################################################################################
# NVM
# https://github.com/nvm-sh/nvm
################################################################################

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

################################################################################
# YouCompleteMe
# https://github.com/ycm-core/YouCompleteMe#linux-64-bit
################################################################################

sudo apt install -y build-essential cmake vim python3-dev
sudo apt install -y mono-complete

# gtags

sudo apt install -y libncurses5-dev
