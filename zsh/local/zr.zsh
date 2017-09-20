
export STARTERVIEW="/home/mattf/ziprecruiter"
export LOCAL_SANDBOX_USERNAME="mattf"

export DBIC_TRACE=1
export DBIC_TRACE_PROFILE="console"
export TEST_REALLY_VERBOSE=1

alias z="cd $STARTERVIEW"
alias zv="$STARTERVIEW/bin/zr-vagrant"

alias perlbs='/usr/bin/zrperl -MStarterView::Bootstrap'

#alias ctags="`brew --prefix`/bin/ctags"

alias zrtcm="prove -vr -Iapp/lib app/t/tcm.t :: "
alias zrt="prove -vr "

source /etc/profile.d/ziprecruiter_environment.zsh
