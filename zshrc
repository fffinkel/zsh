
autoload -Uz compinit

compinit

autoload -U edit-command-line

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward

zle -N edit-command-line
bindkey -M vicmd v edit-command-line

setopt histignorealldups sharehistory

source ~/.zsh/prompt.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/styles.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/greeting.zsh
source ~/.zsh/ssh.zsh

if [ -f ~/.zsh/work.zsh ]; then
  source ~/.zsh/work.zsh
fi

ZIPRC=$HOME/.ziprc
if [ -f $ZIPRC ]; then
 source $ZIPRC
fi

if [ -z $STY ]; then
  echo
  screen -ls
fi

(~/.zsh/repocheck.zsh &)
