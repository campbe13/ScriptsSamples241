#!/bin/bash
# pmc
# 2016-02-29
# functions try out
# special args
# all func args $#
# all vars in bash are global in scope
# unless explicitly declared as local
# inside a function

test()
{
echo $FUNCNAME
local count=0
for arg in $*
  do
  echo arg $arg
  ((count++))
  done
return 5
}

test
echo return code $? 
echo "again, 1 arg"
test carrot
echo $count
echo "again 5 args"
test carrot mole potato bits macdonald
echo $count
