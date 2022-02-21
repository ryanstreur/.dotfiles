# To analyze the performance of this file, uncomment below and the zprof call at the bottom
# zmodload zsh/zprof

################################################################################
# p10k
################################################################################
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

################################################################################
# Oh-my-zsh
################################################################################
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode auto
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)
source $ZSH/oh-my-zsh.sh

if [[ -a ~/.local.sh ]]; then
	source ~/.local.sh
fi


################################################################################
# Functions and Keybindings
################################################################################

bindkey "^wq" exitshell
bindkey -v


####
# close tmux window with CTRL-W CTRL-Q
####

function exitshell() {
  exit;
}

zle -N exitshell

################################################################################
# Environment
################################################################################

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
JAVA_HOME=/usr/local/opt/openjdk@8
export JAVA_HOME=/usr/local/opt/openjdk@8

export EDITOR=nvim
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

export PATH="/usr/local/opt/bzip2/bin:$PATH"

export LDFLAGS="$LDFLAGS -L/usr/local/opt/postgresql@9.5/lib"
export CPPFLAGS="$CPPFLAGS -I/usr/local/opt/postgresql@9.5/include"

export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/postgresql@9.5/lib/pkgconfig"

PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/share
PATH=$PATH:$HOME/bin
PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
export PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet


# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8


################################################################################
# Aliases
################################################################################

alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

alias l="ls -la"

alias vim=nvim
alias v.='$EDITOR .'
alias emc=emacs26
alias :q=exit


alias py=python3
alias pipup="python -m pip install --upgrade pip"

alias djr="python manage.py runserver"
alias djm="python manage.py migrate"
alias djmm="python manage.py makemigrations"
alias djt="python manage.py test"

alias org="emacs -nw ~/org"

# tmux aliases
alias tct="tmux choose-tree"
alias tma="tmux attach"

alias tdf="tmux new-session -A -c $HOME/dotfiles -s dotfiles"
alias trmove="tmux new-session -A -c $HOME/repos/rmove -s rmove"
alias ttfg="tmux new-session -A -c $HOME/repos/tfguide -s tfguide"
alias trmw="tmux new-session -A -c $HOME/repos/rMergeWebsite -s rmergeweb"
alias trn="tmux new-session -A -c $HOME/repos/rsg-notes -s rsg-notes"
alias tpops="tmux new-session -A -c $HOME/repos/POPS -s pops"

alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

alias dockergit="docker run -ti --rm -v $(pwd):/git -v $HOME/.ssh:/root/.ssh omnys/git-svn"


# zprof
