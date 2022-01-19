# To analyze the performance of this file, uncomment below and the zprof call at the bottom
zmodload zsh/zprof

# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

source $HOME/.path
source $HOME/.exports
source $HOME/.aliases

if [[ -a ~/.local.sh ]]; then
	source ~/.local.sh
fi

export PATH=$PATH:/home/ryan/bin

####
# close tmux window with CTRL-W CTRL-Q
####

function exitshell() {
  exit;
}

zle -N exitshell

bindkey "^wq" exitshell


export EDITOR=nvim

bindkey -v
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
JAVA_HOME=/usr/local/opt/openjdk@8
export JAVA_HOME=/usr/local/opt/openjdk@8

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

eval "$(pyenv init -)"

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


zprof
