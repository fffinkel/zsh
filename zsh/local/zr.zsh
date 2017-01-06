
export STARTERVIEW="/Users/mattfinkel/src/zip/ziprecruiter"
export LOCAL_SANDBOX_USERNAME="mattf"

## default NFS
#export LOCAL_SANDBOX_MOUNT_TYPE="vboxsf"

alias z="cd $STARTERVIEW"
alias zv="$STARTERVIEW/bin/zr-vagrant"

alias mr='killall -r plackup -w -q; killall -r starman -w -q; cd $STARTERVIEW; bin/zr-www-app'
alias mra='killall -r plackup -w -q; killall -r starman -w -q; cd $STARTERVIEW; bin/zr-partner-alerts-app'
alias mrc='killall -r plackup -w -q; killall -r starman -w -q; cd $STARTERVIEW; bin/zr-dev-combined-app'
