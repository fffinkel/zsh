alias gst='git status'
alias gb='git branch'

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
alias gm='git merge --ff-only'

alias gsl='git stash list'
alias gsp='git stash pop'

function logsubsearch() { git log -L '/sub '"$1"' {/',/^}/:$2 }
alias gls=logsubsearch

function edit_conflicts() { vim -p $(git status | grep "both modified:" | perl -pe 's/both modified:\s*(.*)$/$1/') }
alias ugh=edit_conflicts

function edit_modified() { vim -p $(git status | grep "^\s*modified:" | perl -pe 's/modified:\s*(.*)$/$1/') }
alias work=edit_modified

alias derp='git commit --amend --no-edit && git push --force-with-lease'

alias s='screen -dRR'
alias sls='screen -ls'

alias vi='vim -p'
alias ls='ls -G'

function find_and_open() { vim -p +/$1 -c ":tabdo normal gg" -c ":tabdo normal n" $(ack -l $1 $2) }
alias fo=find_and_open

function greenlight_submit() {
  branch=$(git rev-parse --abbrev-ref HEAD)
  git checkout master
  greenlight submit $branch
}
alias gtfo=greenlight_submit

alias colr='git checkout $(git tag | grep prod_www | sort -r | head -n 1)'

function regex_checkout() {
  result=$(git branch | grep $1)
  if [[ $result = *$'\n'* ]]; then
    echo "error, found multiple branches matching \"$1\""
    return 1
  fi
  git checkout $(echo ${result/\*/} | xargs)
}
alias gco=regex_checkout
