#!/bin/zsh

PREFIX_FILE="/tmp/.prompt_prefix"
OOD_WARNING="WARNING: %s dir is out of date"
WTU_WARNING="WARNING: %s dir has uncommitted changes"
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
    printf "$OOD_WARNING\n" $REPO >> $PREFIX_FILE
  fi

  if [[ "$REPO_STATUS" != *"working tree clean"* ]]; then
    printf "$WTU_WARNING\n" $REPO >> $PREFIX_FILE
  fi

done
