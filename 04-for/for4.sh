#!/bin/bash
# PMC
# 2016-02-23
# intro to for loops in bash
# a list of files on the system

sn=$(basename $0)
ctfull=0
for fn in $( cat list )
 do
 # check if empty
 if [[ ! -s $fn ]]  ; then
    echo $fn is empty
 else 
     (( ctfull++ ))
 fi
 done
echo $sn:   $ctfull non empty files in list
