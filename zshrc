#source ~/.zsh/prompt.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/styles.zsh
source ~/.zsh/exports.zsh

autoload -Uz compinit
compinit

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

setopt histignorealldups sharehistory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

if [[ `hostname` == 'aether' ]]; then
	source ~/.zsh/local/aether.zsh
elif [[ `hostname` == 'boxthebestbox' ]]; then
	source ~/.zsh/local/boxthebestbox.zsh
elif [[ `hostname` == 'boxtheworstbox' ]]; then
	source ~/.zsh/local/boxtheworstbox.zsh
fi
