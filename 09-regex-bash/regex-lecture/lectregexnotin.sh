#!/bin/bash
# pmc
# 2019-03-25
# regex in bash
# scripts from the regex-bash lecture
# if [[ arg =~ pattern ]]  
echo  does not contain a or A 
echo  how do I do that, I can see if it contains a or A
echo 

str="lets go fishinnng again"
echo string:  $str

if [[ "$str" =~ (A|a)  ]] ; then
  echo $str match A or a
else
  echo $str no match A or a
fi

str="lets not go fishinnng "
echo string:  $str

if [[ ! "$str" =~ (A|a)  ]] ; then
  echo $str NO A or a
else
  echo $str match A or a
fi
