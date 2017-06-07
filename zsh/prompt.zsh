source ~/.zsh/git-prompt/zshrc.sh

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH=""

PROMPT="
%{$fg[yellow]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[yellow]%}%~%{$reset_color%} on%{$fg[yellow]%}\$(git_super_status)%{$reset_color%}
[%w %t] %% "
