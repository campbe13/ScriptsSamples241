#!/bin/bash
# PMC
# 2013-02-19
# 
# show  if with file type operators

var=/etc
# file type operator, check for  directory
echo $var test if dir
# test is equiv to [ ] 
if [[ -d $var  ]]
then
   echo $var is dir
else
   echo $var is not dir
fi

var2=~/.bashrc
echo $var2 test if file
if [[ -f  $var2 ]]
then
   echo $var2 is file
else
   echo $var2 is not file
fi

// use the name of the script 
var3=$(basename $0)
echo $var3 test if executable
if [[ -x  $var3 ]]
then
   echo $var3 is executable
else
   echo $var3 is not executable
fi

read -p "enter file name " var4
if [[ -x  $var4 ]]
then
   echo $var4 exists '(file or dir or other)'
else
   echo $var4 does not exist '(file or dir or other)'
fi
