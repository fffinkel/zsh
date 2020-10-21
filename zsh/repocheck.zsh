#!/bin/zsh

PREFIX_FILE="/tmp/.prompt_prefix"
CONFIGS_DIR="$HOME/cnf"
OOD_WARNING="WARNING: %s is out of date"
WTU_WARNING="WARNING: %s has uncommitted changes"

check_dir() {
  for REPO in $(ls $CONFIGS_DIR); do
    DIR=$CONFIGS_DIR/$REPO
    if [[ ! -d $DIR/.git ]]; then
      continue
    fi

    git --git-dir=$DIR/.git --work-tree=$DIR fetch > /dev/null
    REPO_STATUS=$(git --git-dir=$DIR/.git --work-tree=$DIR status)

    if [[ "$REPO_STATUS" == *"Your branch is behind 'origin/master'"* ]]; then
      PREFIX_STRING+="$(printf "$OOD_WARNING" $DIR)\n"
    fi

    if [[ "$REPO_STATUS" != *"working tree clean"* ]]; then
      PREFIX_STRING+="$(printf "$WTU_WARNING" $DIR)\n"
    fi

  done
}

check_dir

if [[ $PREFIX_STRING == "" ]]; then
  if [[ -a $PREFIX_FILE ]]; then
    rm $PREFIX_FILE
  fi
else
  echo $PREFIX_STRING > $PREFIX_FILE
fi
