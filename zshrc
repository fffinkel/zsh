
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
source ~/.zsh/ssh.zsh

ZIPRC=$HOME/.ziprc
if [ -f $ZIPRC ]; then
 source $ZIPRC
fi

if [[ -S "$SSH_AUTH_SOCK" && ! -h "$SSH_AUTH_SOCK" ]]; then
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock;
fi
export SSH_AUTH_SOCK=~/.ssh/auth.sock

(~/.zsh/repocheck.zsh &)
