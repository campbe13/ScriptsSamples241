#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="lets go fishinnng again"
echo string:  $str


str="lets go fishinnnnnnnnng again"
echo string:  $str

if [[ "$str" =~ in{3,6}g  ]] ; then
  echo $str match 'in{3,6}g' 
else
  echo $str no match 'in{3,6}g'
fi

str="lets go fishinnnnnnnnn again"
echo string:  $str

if [[ "$str" =~ in{3,6}  ]] ; then
  echo $str match 'in{3,6}' 
else
  echo $str no match 'in{3,6}'
fi
