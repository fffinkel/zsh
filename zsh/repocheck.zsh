#!/bin/zsh

PREFIX_FILE="/tmp/.prompt_prefix"
WARNING="WARNING: %s dir is out of date"
REPOS=(
  "cnf/zsh"
  "cnf/vim"
  "cnf/dotfiles"
)

if [[ -a $PREFIX_FILE ]] then
  rm $PREFIX_FILE
fi

for REPO in $REPOS; do

  REPO_DIR=$HOME/$REPO
  git --git-dir=$REPO_DIR/.git fetch > /dev/null
  REPO_STATUS=$(git --git-dir=$REPO_DIR/.git status)

  if [[ "$REPO_STATUS" == *"Your branch is behind 'origin/master'"* ]]; then
    printf "$WARNING\n" $REPO >> $PREFIX_FILE
  fi

done
