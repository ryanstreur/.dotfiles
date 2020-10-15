################################################################################
# PATH Variables
################################################################################

export PATH=$PATH:$HOME/.local/bin 
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:GOPATH/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/miniconda3/bin
export PATH=$PATH:/usr/share
export PATH=$PATH:~/bin
export PATH=$PATH:/usr/local/lib/python3.6/dist-packages

# Oh My Zsh Config
# https://github.com/ohmyzsh/ohmyzsh/wiki
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  django
  docker
  vscode # https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins#vscode
  web-search
  z
)

source $ZSH/oh-my-zsh.sh

################################################################################
# User configuration
################################################################################

export EDITOR=nvim

################################################################################
# Aliases
################################################################################

alias vim=$EDITOR
alias vi=$EDITOR
alias v.='$EDITOR .'
alias rmer='cd /mnt/c/Users/ryan.streur/repos/rMergeWebsite'
alias emc=emacs26
alias py=python3

################################################################################
# Installed-Software-Specific
################################################################################

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Deno
export DENO_INSTALL=$HOME/.deno
export PATH="$DENO_INSTALL/bin:$PATH"

export SPACEVIMDIR=$HOME/.dotfiles/.SpaceVim.d/
export GTAGSLABEL=pygments

export GOPATH=$HOME/go-work
