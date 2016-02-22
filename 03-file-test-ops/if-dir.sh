#!/bin/bash
# PMC
# 2016-02-12
# 
# show  if with file type operators

read -p "enter file name to test: " var
# check for file
if [[ -d $var  ]]
then
   echo $var is a directory
else
   echo $var is not a directory
fi