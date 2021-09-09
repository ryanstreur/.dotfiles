source $HOME/.my-oh-my-zsh
source $HOME/.path
source $HOME/.exports
source $HOME/.aliases

export PATH=$PATH:/home/ryan/bin

if [[ -a /home/ryan/lib/azure-cli/az.completion ]];then
	source /home/ryan/lib/azure-cli/az.completion
fi

if [[ -a ~/.local.sh ]]; then
	source ~/.local.sh
fi

eval "$(pyenv init -)"

