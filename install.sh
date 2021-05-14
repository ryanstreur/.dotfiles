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
git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim
ln -s modules/Vundle.vim $HOME/.vim/bundle/Vundle.vim

vim -c :PluginInstall -c :qa

################################################################################
# Pyenv
# https://github.com/pyenv/pyenv-installer
################################################################################

curl https://pyenv.run | bash

################################################################################
# YouCompleteMe
# https://github.com/ycm-core/YouCompleteMe#linux-64-bit
################################################################################

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
