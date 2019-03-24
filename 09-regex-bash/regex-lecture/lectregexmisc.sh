#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]] 


for arg in $@ ; do 

   if [[ $arg =~ ^[0-9][0-9]*[0-9]$ ]] ; then
        echo $arg is digits only
   else
        echo $arg contains non-digits
   fi
   ((count++))
done

echo $count args
