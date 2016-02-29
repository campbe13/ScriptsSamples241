#!/bin/bash
# pmc
# 2016-02-29
# functions try out
# special args
# all func args $#

test()
{
echo $FUNCNAME
count=0
for arg in $*
  do
  echo arg $arg
  ((count++))
  done
}

test
echo "again, 1 arg"
test carrot
echo $count
echo "again 5 args"
test carrot mole potato bits macdonald
echo $count
