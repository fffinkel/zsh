source ~/.zsh/git-prompt/zshrc.sh

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH=""

PROMPT="%n %m %~\$(git_super_status) %% "
