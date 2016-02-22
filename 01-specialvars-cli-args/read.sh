#!/bin/bash
# PMC
# 2016-02-19
# test the read builtin 
# used with strings

# 1 argument required
if [[ $# -eq 1 ]] ; then
  fn=$1
else 
  read -p "I need a file name " fn 
fi
echo ct $#
echo \$1 $1
echo \$fn $fn
