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

source ~/.zsh/local/zr.zsh
cd ~/ziprecruiter
