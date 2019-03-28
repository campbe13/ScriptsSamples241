#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
read -p " string " str
if [[ ! "$str" =~ [[:alpha:]]   ]] ; then
  echo $str  only digit
else
  echo $str alpha
fi
