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
# Link Config Files
################################################################################

cd $HOME

# Shell
ln -s -f dotfiles/.aliases .aliases
ln -s -f dotfiles/.bash_profile .bash_profile
ln -s -f dotfiles/.exports .exports
ln -s -f dotfiles/.my-oh-my-zsh .my-oh-my-zsh
ln -s -f dotfiles/.path .path
ln -s -f dotfiles/.zshrc .zshrc

# Software Config

ln -s -f dotfiles/.csslintrc .csslintrc
ln -s -f dotfiles/.editorconfig .editorconfig
ln -s -f dotfiles/.eslintrc .eslintrc
ln -s -f dotfiles/.eslintrc .eslintrc
ln -s -f dotfiles/.gitconfig .gitconfig
ln -s -f dotfiles/.globalrc .globalrc
ln -s -f dotfiles/.spacemacs .spacemacs
ln -s -f dotfiles/.vim-plugins.vim .vim-plugins.vim
ln -s -f dotfiles/.vimrc .vimrc

cd dotfiles

################################################################################
# Oh My Zsh
# https://github.com/ohmyzsh/ohmyzsh
################################################################################

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

################################################################################
# 
# Pull Submodules (git-based dependencies)
# https://git-scm.com/book/en/v2/Git-Tools-Submodules
# - Vundle
# - Oh My Tmux
# 
################################################################################

git submodule init
git submodule update

git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim

################################################################################
# Oh My Tmux
# https://github.com/gpakosz/.tmux
################################################################################

cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
ln -s -f dotfiles/.tmux.conf.local
cd dotfiles

################################################################################
# Vundle
# https://github.com/VundleVim/Vundle.vim#quick-start
################################################################################

mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/bundle
ln -s modules/Vundle.vim $HOME/.vim/bundle/Vundle.vim

vim -c :PluginInstall -c :qa

################################################################################
# Pyenv
# https://github.com/pyenv/pyenv-installer
################################################################################

# Depenedencies
# https://github.com/pyenv/pyenv/wiki/Common-build-problems
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
  xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

curl https://pyenv.run | bash

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

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
cd -

# gtags

sudo apt install -y libncurses5-dev

################################################################################
# spacemacs
################################################################################

git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
cd $HOME/.emacs.d
git checkout develop
cd -
