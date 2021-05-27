#!/bin/bash

################################################################################
# Link Config Files
################################################################################

cd $HOME

# Shell

ln -s -f dotfiles/.aliases .aliases
ln -s -f dotfiles/.bash_profile .bash_profile
ln -s -f dotfiles/.exports .exports
ln -s -f dotfiles/.path .path

ln -s -f dotfiles/zsh/.my-oh-my-zsh .my-oh-my-zsh
ln -s -f dotfiles/zsh/.zshrc .zshrc
ln -s -f dotfiles/zsh/.zprofile .zprofile

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
ln -s -f dotfiles/.tmux.conf .tmux.conf

cd dotfiles

################################################################################
# Oh My Zsh
# https://github.com/ohmyzsh/ohmyzsh
################################################################################

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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
# spacemacs
################################################################################

git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
cd $HOME/.emacs.d
git checkout develop
cd -
