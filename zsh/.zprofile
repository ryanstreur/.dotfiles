
##
# Your previous /Users/ryan.streur/.zprofile file was backed up as /Users/ryan.streur/.zprofile.macports-saved_2021-10-20_at_17:15:46
##

# eval "$(pyenv init --path)"

if [[ -a $HOME/.dotfiles/.aliases ]] then
  . $HOME/.dotfiles/.aliases
fi

##########
# Antigen
##########
if [[ -a $HOME/.dotfiles/modules/antigen/antigen.zsh ]] then
  . $HOME/.dotfiles/modules/antigen/antigen.zsh

  antigen init $HOME/.dotfiles/zsh/.antigenrc
fi


