#!/bin/bash
#pmc
#2013-03-26
# basic functions

function func1() 
{
echo this is $FUNCNAME
echo this function rec\'d $# arguments  
echo this function arguments $*
echo this function got \$1 $1 as 1st arg
}
function func2() 
{
echo blah $FUNCNAME
}
#main body of code
func2

echo 1st try  no args
func1  
echo 2nd try one arg
func1  argggggh
echo 3rd try send all command line args to my function
func1 $*  # or I can use $@
