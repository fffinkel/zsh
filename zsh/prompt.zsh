
source ~/.zsh/git-prompt/zshrc.sh

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH=""
ZSH_THEME_GIT_PROMPT_CACHE=true

PREFIX_FILE="/tmp/.prompt_prefix"

__prompt () {

  if [[ $__CURRENT_DIR_CACHE != `pwd` ]] then

    PROMPT="
%{$fg[yellow]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[yellow]%}%~%{$reset_color%}"

    IN_A_REPO_BABY=`git rev-parse --is-inside-work-tree 2>/dev/null`
    [ $IN_A_REPO_BABY ] && PROMPT+=' on%{$fg[yellow]%}`git_super_status`%{$reset_color%}'

    if [[ -a $PREFIX_FILE ]] then
      PROMPT+="
%{$fg[red]%}$(cat $PREFIX_FILE)%{$reset_color%}"
    fi

    if [[ -n $KUBECONFIG ]] then
      PROMPT+="
%{$fg[green]%}KUBECONFIG=$(echo $KUBECONFIG)%{$reset_color%}"
    fi

    if [[ -n $KNAMESPACE ]] then
      PROMPT+="
%{$fg[green]%}KNAMESPACE=$(echo $KNAMESPACE)%{$reset_color%}"
    fi

    PROMPT+="
[%w %t] %% "

  fi

}

precmd() { __prompt; }
