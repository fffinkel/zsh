
RUNCOUNT=$(ps -ef | grep "ssh-agent" | grep -v "grep" | wc -l)
if [ $RUNCOUNT -eq 0 ]; then
  echo Starting SSH Agent;
  eval $(ssh-agent -s);
else
  echo Found SSH Agent;
fi

if [ $OSTYPE = darwin ]; then
  ssh-add -K;
else
  ssh-add;
fi

if [[ -S "$SSH_AUTH_SOCK" && ! -h "$SSH_AUTH_SOCK" ]]; then
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/auth.sock;
fi
export SSH_AUTH_SOCK=~/.ssh/auth.sock
