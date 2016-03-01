#!/bin/bash
# pmc
# 2016-02-29
# functions try out
# special args
# variables  local

vartest()
{
echo $FUNCNAME  func name
echo $0 script name
# local  declaratioin needed
local count=0
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
count=0
((count++))
vartest  spiders snow tree cat dog horse hen 
echo return code $?
echo count $count
((count++))
vartest  
echo return code $?
echo count $count
