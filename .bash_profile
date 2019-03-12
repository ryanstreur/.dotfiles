# bash case-insensitive completion
set completion-ignore-case

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
source ~/.git-completion.bash

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PS1="\e[0;35m\w\e[m \e[0;33m|\e[m \e[0;36m\$(parse_git_branch)\e[m 🐌 "

# Set Gopath
export GOPATH=$HOME/go

export PATH=$PATH:$HOME/go/bin

# Configure gtags
export GTAGSLABEL=ctags

alias emacs="/usr/local/Cellar/emacs/26.1_1/bin/emacs"

alias weather="curl wttr.in/portland"

