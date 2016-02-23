#!/bin/bash
# PMC
# 2016-02-23
# intro to for loops in bash
# a list of files on the system

sn=$(basename $0)
if [[ $# -ne  1 ]] ; then
  echo Usage: $sn listfile
  exit 5
fi
listfn=$1
ctfull=0
for fn in $( cat $listfn )
 do
 # check if empty
 if [[ ! -s $fn ]]  ; then
    echo $fn is empty
 else 
     (( ctfull++ ))
 fi
 done
echo $sn:   $ctfull non empty files in $listfn 
