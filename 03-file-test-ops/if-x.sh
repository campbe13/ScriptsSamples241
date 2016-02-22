#!/bin/bash
# PMC
# 2016-02-12
# 
# show  if with file type operators

read -p "enter file name to test: " var
# check for not empty

if [[ -x $var  ]]
then
   echo $var is executable
else
   echo $var is not executable
fi