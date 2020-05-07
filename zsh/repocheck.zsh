#!/bin/zsh

PREFIX_FILE="/tmp/.prompt_prefix"
CONFIGS_DIR="$HOME/cnf"
OOD_WARNING="WARNING: %s dir is out of date"
WTU_WARNING="WARNING: %s dir has uncommitted changes"

for REPO in $(ls $CONFIGS_DIR); do

  REPO_DIR=$CONFIGS_DIR/$REPO
  git --git-dir=$REPO_DIR/.git --work-tree=$REPO_DIR fetch > /dev/null
  REPO_STATUS=$(git --git-dir=$REPO_DIR/.git --work-tree=$REPO_DIR status)

  if [[ "$REPO_STATUS" == *"Your branch is behind 'origin/master'"* ]]; then
    PREFIX_STRING+="$(printf "$OOD_WARNING" $REPO)\n"
  fi

  if [[ "$REPO_STATUS" != *"working tree clean"* ]]; then
    PREFIX_STRING+="$(printf "$WTU_WARNING" $REPO)\n"
  fi

done

if [[ $PREFIX_STRING == "" ]]; then
  rm $PREFIX_FILE
else
  echo $PREFIX_STRING > $PREFIX_FILE
fi
