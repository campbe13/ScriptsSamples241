#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
str="the year is 2019"
echo string:  $str

if [[ "$str" =~ ^The  ]] ; then
  echo $str match '^The' 
else
  echo $str no match '^The'
fi

str="The year is 2019"
echo string:  $str

if [[ "$str" =~ ^The  ]] ; then
  echo $str match '^The' 
else
  echo $str no match '^The'
fi

echo string:  $str

if [[ "$str" =~ 2019$  ]] ; then
  echo $str match '2019$' 
else
  echo $str no match '2019$'
fi

echo string:  $str

if [[ "$str" =~ is$  ]] ; then
  echo $str match 'is$' 
else
  echo $str no match 'is$'
fi


