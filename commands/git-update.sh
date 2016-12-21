#!/usr/bin/env bash

##
# Usage
#
# Updates current branch based on its name:
# $ git update
#
# Updates with rebase rather than merge
# $ git update rebase
##

git fetch > /dev/null 2>&1
DEVELOP_EXISTS=$(git ls-remote | grep '/heads/develop' | wc -l)

# exit on error
set -e

BRANCH=$(git rev-parse --abbrev-ref HEAD)
TYPE=$1


if [[ $BRANCH = 'master' ]]; then
  echo "you can't update master silly"
  exit 255
fi

git fetch  # get new stuff

if [[ ${BRANCH:0:7} = "hotfix/" || $DEVELOP_EXISTS -eq 0 || $BRANCH = 'develop' ]]; then
  if [[ $TYPE = 'rebase' ]]; then
    git rebase origin/master
  else
    git merge --no-ff origin/master
  fi
fi

if [[ $DEVELOP_EXISTS -eq 1 ]]; then
  if [[ $TYPE = 'rebase' ]]; then
    git rebase origin/develop
  else
    git merge --no-ff origin/develop
  fi
fi
