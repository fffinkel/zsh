alias gst='git status'

alias gl='git log --graph --pretty=oneline'
alias glo='git log --graph'
alias glog='git log -p --graph'

function logsubsearch() { git log -L '/sub '"$1"' {/',/^}/:$2 }
alias gls=logsubsearch

alias gd='git diff'
alias gdc='git diff --cached'

alias ga='git add'
alias gci='git commit --verbose'

alias gb='git branch -vv'
alias gco='git checkout -b'

alias gf='git fetch'
alias gp='git pull'
alias gpr='git pull --rebase'

alias gsq='git rebase -i HEAD~2'
alias grh='git reset HEAD'

alias s='screen -dRR'
alias sls='screen -ls'

alias ack='ack-grep'
alias vi='vim'

alias pbr='source ~/src/tools/pbr.sh'
alias pbl='perlbrew list'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias ls='ls --color=auto'
