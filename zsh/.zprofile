export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
#
# tmux aliases
SESSION_GROUP=sgrp
alias tct="tmux choose-tree"


alias tdf="tmux new-session -A -t $SESSION_GROUP -c $HOME/dotfiles -s dotfiles"
alias trmove="tmux new-session -A -t $SESSION_GROUP -c $HOME/repos/rmove -s rmove"
alias ttfg="tmux new-session -A -t $SESSION_GROUP -c $HOME/repos/tfguide -s tfguide"

alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"


