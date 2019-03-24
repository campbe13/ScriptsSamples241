#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="the year is 2019"
echo string:  $str

if [[ "$str" =~ 201[19]  ]] ; then
  echo $str match '201[19]' 
else
  echo $str no match '201[19]'
fi

str="the year is 2018"
echo string:  $str

if [[ "$str" =~ 201[19]  ]] ; then
  echo $str match '201[19]' 
else
  echo $str no match '201[19]'
fi

str="the year is 2015"
echo string:  $str

if [[ "$str" =~ 201[0-9]  ]] ; then
  echo $str match '201[0-9]' 
else
  echo $str no match '201[0-9]'
fi

echo "square braces escape the .  like \."

str="the year is 201."
echo string:  $str

if [[ "$str" =~ 201[.9]  ]] ; then
  echo $str match '201[.9]' 
else
  echo $str no match '201[.9]'
fi

