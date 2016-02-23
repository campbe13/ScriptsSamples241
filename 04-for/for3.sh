#!/bin/bash
# PMC
# 2016-02-23
# intro to for loops in bash
# a list of files on the system

sn=$(basename $0)
ctnox=0
ctx=0
for fn in $( ls ~/*.sh )
 do
 # display all scripts that are not executable
 if [[ ! -x $fn ]] ;then 
   echo $fn is not executable
   (( ctnox++ )) 
   else
   (( ctx++  ))
 fi
 done
echo -e " x set \t $ctx \n no x set \t $ctnox "
