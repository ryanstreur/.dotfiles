#!/bin/bash

################################################################################
# Link Config Files
################################################################################

cd $HOME

# Shell

ln -s -f ~/.dotfiles/bash/.bashrc ~
ln -s -f ~/.dotfiles/bash/.hushlogin ~

ln -s -f ~/.dotfiles/zsh/.zshrc ~
ln -s -f ~/.dotfiles/zsh/.zprofile ~

# Software Config

ln -s -f ~/.dotfiles/.csslintrc ~
ln -s -f ~/.dotfiles/.editorconfig ~
ln -s -f ~/.dotfiles/.eslintrc ~
ln -s -f ~/.dotfiles/.gitconfig ~
ln -s -f ~/.dotfiles/.spacemacs ~
ln -s -f ~/.dotfiles/vim/.vimrc ~
ln -s -f ~/.dotfiles/vim/ ~/.vim
ln -s -f ~/.dotfiles/.tmux.conf ~
ln -s -f ~/.dotfiles/.inputrc ~

ln -s -f ~/.dotfiles/.config ~

cd .dotfiles

################################################################################
# spacemacs
################################################################################

# git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
# cd $HOME/.emacs.d
# git checkout develop
# cd -
# 
# Fira Code Installation
# https://www.nerdfonts.com/font-downloads

# sudo apt install zsh
# sudo echo "export 'ZDOTDIR=$HOME/.zsh'" >> /etc/zsh/zshenv
