#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
read -p " string " str
if [[  "$str" =~ ^[[:digit:]]+$   ]] ; then
  echo $str  only digit
else
  echo $str alpha
fi

# begin and end with digit,
# anything or nothing in between
#if [[  "$str" =~ ^[[:digit:]].*[[:digit:]]+$   ]] ; then
