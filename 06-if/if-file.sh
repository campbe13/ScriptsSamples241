#!/bin/bash
# PMC
# 2016-02-12
# 
# show  if with file type operators

read -p "enter file name to test: " var
# check for file
if [[ -f $var  ]]
then
   echo $var is a file
else
   echo $var is not a file
fi