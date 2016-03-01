#!/bin/bash
# pmc
# 2016-02-29
# functions try out
# special args
# variables 

vartest()
{
echo $FUNCNAME  func name
echo $0 script name
# no declaratioin needed
# need to init to 0 for logic 
count=0
for arg in $@ 
 do 
  echo $arg 
  (( count++ ))
 done
 if [[ $count -gt 0 ]] 
 then
      return 5
 else 
     return 10
 fi
}
vartest  spiders snow tree cat dog horse hen 
echo return code $?
echo count $count
vartest  
echo return code $?
echo count $count
