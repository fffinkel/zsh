alias gst='git status'

alias gl='git log --graph --pretty=oneline'
alias glo='git log --graph'
alias glog='git log -p --graph'
alias glos='git log --stat'

alias gd='git diff'
alias gdc='git diff --cached'

alias ga='git add'
alias gci='git commit --verbose'

alias grh='git reset HEAD'
alias gri='git rebase -i'

alias gs='git add . && git stash'
alias gsl='git stash list'
alias gsp='git stash pop'

alias s='screen -dRR'
alias sls='screen -ls'

alias vi='vim -p'
alias ls='ls -G'

function logsubsearch() { git log -L '/sub '"$1"' {/',/^}/:$2 }
alias gls=logsubsearch

function edit_conflicts() { vim -p $(git status | grep "both modified:" | perl -pe 's/both modified:\s*(.*)$/$1/') }
alias ugh=edit_conflicts
