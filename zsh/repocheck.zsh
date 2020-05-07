#!/bin/zsh

PREFIX_FILE="/tmp/.prompt_prefix"
CONFIGS_DIR="$HOME/cnf"
OOD_WARNING="WARNING: %s dir is out of date"
WTU_WARNING="WARNING: %s dir has uncommitted changes"

if [[ -a $PREFIX_FILE ]] then
  rm $PREFIX_FILE
fi

for REPO in $(ls $CONFIGS_DIR); do

  REPO_DIR=$CONFIGS_DIR/$REPO
  git --git-dir=$REPO_DIR/.git fetch > /dev/null
  REPO_STATUS=$(git --git-dir=$REPO_DIR/.git status)

  if [[ "$REPO_STATUS" == *"Your branch is behind 'origin/master'"* ]]; then
    printf "$OOD_WARNING\n" $REPO >> $PREFIX_FILE
  fi

  if [[ "$REPO_STATUS" != *"working tree clean"* ]]; then
    printf "$WTU_WARNING\n" $REPO >> $PREFIX_FILE
  fi

done
