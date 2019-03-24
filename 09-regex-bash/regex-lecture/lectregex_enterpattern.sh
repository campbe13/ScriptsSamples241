#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="We are going to go fishing!"
echo string:  $str
read -p "regex pattern to match " pattern

if [[ "$str" =~ $pattern  ]] ; then
  echo $str match $pattern 
else
  echo $str no match $pattern 
fi
