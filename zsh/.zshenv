# Third-Party Config

export WGETRC=$HOME/dotfiles/wgetrc

# Source code
export REPOS_DIR=$HOME/repos

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export VERSION_CODENAME="$(lsb_release -cs)"
fi

# Postgres

export PGDATA=/usr/local/var/postgres
