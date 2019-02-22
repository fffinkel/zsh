
source ~/.zsh/git-prompt/zshrc.sh

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH=""

__prompt () {

PROMPT="
%{$fg[yellow]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[yellow]%}%~%{$reset_color%}"

IN_A_REPO_BABY=`git rev-parse --is-inside-work-tree 2>/dev/null`
[ $IN_A_REPO_BABY ] && PROMPT+=' on%{$fg[yellow]%}`git_super_status`%{$reset_color%}'

PROMPT+="
[%w %t] %% "

}

precmd() { __prompt; }
