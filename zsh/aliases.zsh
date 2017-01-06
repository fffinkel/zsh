alias gst='git status'

alias gl='git log --graph --pretty=oneline'
alias glo='git log --graph'
alias glog='git log -p --graph'
alias glos='git log --stat'

function logsubsearch() { git log -L '/sub '"$1"' {/',/^}/:$2 }
alias gls=logsubsearch

alias gb=new_local_ticket
function new_local_ticket() {
	PROJECT="CIR"
	ticket="$PROJECT\-$1"
	count=0

	git fetch

	for i in $(git branch -r)
		do
			if [[ $i =~ $ticket ]]; then
				branch=$(sed -e's/\s*origin\///' <<< $i)
				count=$((count + 1))
			fi
	done

	if [[ $count -ne 1 ]]; then
		echo "'$ticket' matches $count branches, exiting"
	else
		git checkout -b $branch origin/$branch
	fi
}

alias gd='git diff'
alias gdc='git diff --cached'

alias ga='git add'
alias gci='git commit --verbose'

alias gco='git checkout '

alias gf='git fetch'
alias gp='git pull'
alias gpr='git pull --rebase'

alias gsq='git rebase -i HEAD~2'
alias grh='git reset HEAD'

alias s='screen -dRR'
alias sls='screen -ls'

alias vi='vim -p'
alias ls='ls --color=auto'
