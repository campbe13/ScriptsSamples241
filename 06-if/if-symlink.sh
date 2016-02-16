#!/bin/bash
# PMC
# 2016-02-12
# 
# show  if with file type operators

read -p "enter file name to test: " var
# check for symlink

if [[ -h $var  ]]
then
   echo $var is a symlink
else
   echo $var is not a symlink
fi