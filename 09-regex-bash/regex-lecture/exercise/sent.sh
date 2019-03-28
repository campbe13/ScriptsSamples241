#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
# match a sentence
# begins w upper
# ^[[:upper:]]
# ends w ..., ., ! , ?
# (\.\.\.|\.|\?|\!)$
# contains space, num, alpha, :, ;, comma
# ([[:alnum:]]|\:|\;|\,|[[:space:]])+
#pattern=^[[:upper:]]([[:alnum:]]|\:|\;|\,|[[:space:]])+(\.\.\.|\.|\?|\!)$
read -p "string " str
if [[ "$str" =~ ^[[:upper:]]([[:alnum:]]|\:|\;|\,|[[:space:]])+(\.\.\.|\.|\?|\!)$ ]] ; then
  echo $str  this is a sentence
else
  echo $str  is not a sentence
fi
