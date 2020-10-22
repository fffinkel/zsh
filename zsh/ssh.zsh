runcount=$(ps -ef | grep "ssh-agent" | grep -v "grep" | wc -l)
if [ $runcount -eq 0 ]; then
  echo Starting SSH Agent
  eval $(ssh-agent -s)
  ssh-add -K ~/.ssh/id_rsa
else
  echo Found SSH Agent
fi
