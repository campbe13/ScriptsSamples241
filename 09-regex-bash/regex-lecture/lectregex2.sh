#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="we are going fishing"

if [[ $str =~ ingd  ]] ; then
  echo $str match ingd 
else
  echo $str no match ingd 
fi
