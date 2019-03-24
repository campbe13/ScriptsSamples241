#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="lets go fishinnng again"
echo string:  $str

if [[ "$str" =~ in{3}g  ]] ; then
  echo $str match 'in{3}g' 
else
  echo $str no match 'in{3}g'
fi

str="lets go fishinnnnnnnnng again"
echo string:  $str

if [[ "$str" =~ in{3}g  ]] ; then
  echo $str match 'in{3}g' 
else
  echo $str no match 'in{3}g'
fi

str="lets go fishing again"
echo string:  $str

if [[ "$str" =~ in{3}g  ]] ; then
  echo $str match 'in{3}g' 
else
  echo $str no match 'in{3}g'
fi

str="lets go fishinnnnnnnnng again"
echo string:  $str

if [[ "$str" =~ in{3}  ]] ; then
  echo $str match 'in{3}' 
else
  echo $str no match 'in{3}'
fi
echo the problem with exact is that it stops checking when matched
echo so you must bound your regex
