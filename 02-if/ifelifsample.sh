#!/bin/bash
# ifelifsample2.sh
# PMC
# 2016-02-16
#
# A simple script that turns a score into a grade
#
if [[ $# -le 0 ]] 
then 
   echo "no cli args"
elif [[ $# -eq 1 ]] ; then
   echo "1 cli arg"
elif [[ $# -eq 4 ]] || [[ $# -eq 5 ]]
then
   echo "4 or 5 cli arg"
else
	echo $# number of cli args
fi 
