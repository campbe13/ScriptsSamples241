#!/bin/bash
# PMC
# 2016-02-19
# test the  for loop
# the list is files ending in sh in the cwd

for scripts in $(ls *.sh) 
 do
 #only executabls
 if [[ -x $scripts ]] ; then
    echo $scripts executable
 fi
 done

for scripts in $(ls *.sh) 
 do
 #only non executabls
 if [[ ! -x $scripts ]] ; then
    echo $scripts NOT executable
 fi
 done
