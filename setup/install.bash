#!/bin/bash

################################################################################
# Link Config Files
################################################################################

cd $HOME

# Shell

ln -s -f ~/.dotfiles/.aliases ~
ln -s -f ~/.dotfiles/.bash_profile ~
ln -s -f ~/.dotfiles/.exports ~
ln -s -f ~/.dotfiles/.path ~

ln -s -f ~/.dotfiles/zsh/.zshrc ~
ln -s -f ~/.dotfiles/zsh/.zprofile ~

# Software Config

ln -s -f ~/.dotfiles/.csslintrc ~
ln -s -f ~/.dotfiles/.editorconfig ~
ln -s -f ~/.dotfiles/.eslintrc ~
ln -s -f ~/.dotfiles/.eslintrc ~
ln -s -f ~/.dotfiles/.gitconfig ~
ln -s -f ~/.dotfiles/.globalrc ~
ln -s -f ~/.dotfiles/.spacemacs ~
ln -s -f ~/.dotfiles/.vim-plugins.vim ~
ln -s -f ~/.dotfiles/.vimrc ~
ln -s -f ~/.dotfiles/.tmux.conf ~
ln -s -f ~/.dotfiles/.inputrc ~
ln -s -f ~/.dotfiles/.zsh ~

cd .dotfiles

################################################################################
# spacemacs
################################################################################

git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
cd $HOME/.emacs.d
git checkout develop
cd -

# Fira Code Installation
# https://www.nerdfonts.com/font-downloads

sudo apt install zsh
sudo echo "export 'ZDOTDIR=$HOME/.zsh'" >> /etc/zsh/zshenv
