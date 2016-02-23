#!/bin/bash
# p campbell
# 2015-02-26
# func given one arg  calculate file size
filesizeB()
  {
   if [[ $# -le 0 ]] ; then
       return 1
   elif [[ ! -f $1 ]] ; then
        return 1
   fi
   fsB=$(du -b $1 |cut -f 1)
   return 0
   }

read -p " give me a file name " fn
filesizeB  $fn
if [[ $? -eq 0  ]] ; then
   echo $fn size $fsB
else 
   echo $fn is not a file
fi
