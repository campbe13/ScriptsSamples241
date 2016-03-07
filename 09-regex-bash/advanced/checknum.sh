#!/bin/bash
# pmc
# march 2014-2015-2016
# check if cli is numeric or not 

# here I am sourcing (dot) the file (funcs.sh.inc)
# this is equivalent to the java import
# it makes the code in funcs.sh.inc part of the current process
.  funcs.sh.inc

read -p "number or quit " num
while [[  ! $num =~ ^[qQ] ]] ; do
    isnumeric $num
    if [ $? -eq 0 ] ; then
        echo $num is a number
    else 
        echo $num aint no number
    fi
    isnumericneg $num
    if [ $? -eq 0 ] ; then
        echo $num is a number
    else 
        echo $num aint no number
    fi
    isnumericplus $num
    if [ $? -eq 0 ] ; then
        echo $num is a number
    else 
        echo $num aint no number
    fi
    read -p "number or quit " num
done
