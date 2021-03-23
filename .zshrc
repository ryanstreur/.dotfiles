source $HOME/.path
source $HOME/.exports
source $HOME/.aliases
source $HOME/.my-oh-my-zsh

export PATH=$PATH:/home/ryan/bin

if [[ -f "/home/ryan/lib/azure-cli/az.completion" ]];then
	source '/home/ryan/lib/azure-cli/az.completion'
fi
