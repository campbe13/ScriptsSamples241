#!/bin/bash
# PMC
# 2016-02-12
# 
# show  if with file type operators

read -p "enter file name to test: " var
# check for not empty

if [[ -s $var  ]]
then
   echo $var is not empty
else
   echo $var is empty
fi