source ~/.zsh/prompt.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/styles.zsh
source ~/.zsh/exports.zsh

autoload -Uz compinit
compinit

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

setopt histignorealldups sharehistory

if [[ `hostname` == 'aether' ]]; then
	source ~/.zsh/local/aether.zsh
elif [[ `hostname` == 'boxthebestbox' ]]; then
	source ~/.zsh/local/boxthebestbox.zsh
elif [[ `hostname` == 'boxtheworstbox' ]]; then
	source ~/.zsh/local/boxtheworstbox.zsh
fi
