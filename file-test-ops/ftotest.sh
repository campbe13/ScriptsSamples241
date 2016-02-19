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
echo \$fn $fn

if [[ ! -e $fn ]] ; then
   echo $fn does not exist, try again
   exit 1
fi
echo $fn exists
if [[  -d $fn ]] ; then
   echo $fn is a directory
else 
   echo $fn is NOT a directory
fi 
if [[  -f $fn ]] ; then
   echo $fn is a regular file
   if [[ -s $fn ]] ; then
         echo $fn is not size 0
   fi
   if [[ -x $fn ]] ; then
         echo $fn is executable
   fi
else 
   echo $fn is NOT a regular file 
fi 
if [[  -h $fn ]] ; then
   echo $fn is a symbolic link
else 
   echo $fn is NOT a symbolic link
fi 


