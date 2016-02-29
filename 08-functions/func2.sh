#!/bin/bash
# pmc
# 2016-02-29
# functions try out
# special args

test()
{
echo $FUNCNAME
echo $FUNCNAME \$# $#   # num args to function
echo $FUNCNAME \$1 $1   # 1st arg to function
}

test
echo "again, 1 arg"
test carrot
echo "again 5 args"
test carrot mole potato bits macdonald
