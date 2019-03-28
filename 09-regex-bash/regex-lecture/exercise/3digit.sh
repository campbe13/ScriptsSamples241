#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
read -p "string " str
if [[ "$str" =~ ^[[:digit:]]{3}$   ]] ; then
  echo $str 3 digit only
else
  echo $str   not 3 digit only
fi
if [[ "$str" =~ ^[[:digit:]][[:digit:]][[:digit:]]$   ]] ; then
  echo $str 3 digit only
else
  echo $str   not 3digit only
fi
