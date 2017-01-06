source ~/.zsh/prompt.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/styles.zsh
source ~/.zsh/exports.zsh

autoload -Uz compinit
compinit

set -o vi

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

setopt histignorealldups sharehistory

if [[ `hostname` == 'Matts-MacBook-Pro.local' ]]; then
	source ~/.zsh/local/zr.zsh
elif [[ `hostname` == 'boxthebestbox' ]]; then
	source ~/.zsh/local/boxthebestbox.zsh
elif [[ `hostname` == 'boxtheworstbox' ]]; then
	source ~/.zsh/local/boxtheworstbox.zsh
fi
