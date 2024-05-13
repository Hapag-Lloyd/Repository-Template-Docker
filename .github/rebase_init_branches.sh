#!/usr/bin/env bash

#
# This script rebases all init branches on the main branch.
#

git checkout main
git pull

# for all init branches
for branch in $(git branch --list "init-*"); do
  git checkout "$branch"
  git rebase main
  git push
done
