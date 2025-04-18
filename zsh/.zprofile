
##
# Your previous /Users/ryan.streur/.zprofile file was backed up as /Users/ryan.streur/.zprofile.macports-saved_2021-10-20_at_17:15:46
##

# eval "$(pyenv init --path)"

if [[ -a $HOME/.dotfiles/.aliases ]] then
  . $HOME/.dotfiles/.aliases
fi

if [[ -a $HOME/.dotfiles/zsh/antigen.zsh ]] then
  . $HOME/.dotfiles/zsh/antigen.zsh
fi
