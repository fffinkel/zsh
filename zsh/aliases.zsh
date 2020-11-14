
alias ack='ag'
alias ls='ls -G'
alias s='screen -dRR'
alias sls='screen -ls'
alias vi='vim -p'

# git!
alias ga='git add'
alias gb='git branch'
alias gci='git commit --verbose'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gfr='git fetch && git rebase origin/master'
alias gl='git log --graph --pretty=oneline'
alias glo='git log --graph'
alias glog='git log -p --graph'
alias glos='git log --stat'
alias grh='git reset HEAD'
alias gri='git rebase -i'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gst='git status'

function git_new_branch() {
  git fetch
  git checkout -b $1 --no-track origin/master
}
alias gnb=git_new_branch

function git_regex_checkout() {
  result=$(git branch | grep "$1")
  if [[ $result = *$'\n'* ]]; then
    echo "error, found multiple branches matching \"$1\""
    return 1
  fi
  git checkout $(echo ${result/\*/} | xargs)
}
alias gco=git_regex_checkout
alias gcom='git checkout origin/master'

function edit_conflicts() {
  vim -p $(git status | grep "both modified:" | perl -pe 's/both modified:\s*(.*)$/$1/')
}
alias ugh=edit_conflicts

function edit_modified() {
  vim -p $(git status | grep "^\s*modified:" | perl -pe 's/modified:\s*(.*)$/$1/')
}
alias work=edit_modified

open_go_coverage () {
  go test -v -run Test -coverprofile /tmp/go-cover.tmp $1
  go tool cover -html /tmp/go-cover.tmp -o /tmp/go-cover.html
  open /tmp/go-cover.html
}
alias cvr=open_go_coverage

k_namespace () {
  kubectl -n $KNAMESPACE $@
}
alias k=k_namespace

k_set_namespace () {
  export KNAMESPACE=$1
}
alias kn=k_set_namespace

