
export STARTERVIEW="/Users/mattf/src/zip/ziprecruiter"
export LOCAL_SANDBOX_USERNAME="mattf"

export DBIC_TRACE=1
export DBIC_TRACE_PROFILE="console"
export TEST_REALLY_VERBOSE=1

## default NFS
#export LOCAL_SANDBOX_MOUNT_TYPE="vboxsf"

alias z="cd $STARTERVIEW"
alias zv="$STARTERVIEW/bin/zr-vagrant"

alias mr='killall -r plackup -w -q; killall -r starman -w -q; cd $STARTERVIEW; bin/zr-www-app'
alias mra='killall -r plackup -w -q; killall -r starman -w -q; cd $STARTERVIEW; bin/zr-partner-alerts-app'
alias mrc='killall -r plackup -w -q; killall -r starman -w -q; cd $STARTERVIEW; bin/zr-dev-combined-app'

alias perlbs='/usr/bin/zrperl -MStarterView::Bootstrap'

alias ctags="`brew --prefix`/bin/ctags"

alias zrtcm="prove -vr -Iapp/lib app/t/tcm.t :: "
alias zrt="prove -vr "
