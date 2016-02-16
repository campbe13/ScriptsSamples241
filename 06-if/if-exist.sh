#!/bin/bash
# PMC
# 2016-02-12
# 
# show  if with file type operators

read -p "enter file name to test: " var
# check for file
if [[ -e $var  ]]
then
   echo $var exists '(file or dir or other)'
else
   echo $var does not exist '(file or dir or other)'
fi