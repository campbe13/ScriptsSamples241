#!/bin/bash
# pmc
# 2016-02-16
# git add, commit push script
## may want to add a pull first ... 
read -p "are you sure you don't want to pull first ??? "  yn
if  [[ $yn != y ]]  && [[ $yn != Y ]]; then
    exit 2
fi
if [[ $# -lt 1 ]] ; then
    echo Usage $(basename $0) "commit message"
    exit 1
fi
git add --all .
git status
read -p "continue y/n: " cont

if [[ $cont == "y" ]] ; then
  git commit -m "$*"
  git push
fi
