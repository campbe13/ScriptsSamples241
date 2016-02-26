#!/bin/bash
#pmc
#2013-03-26
#functions & return codes
# functions do not behave like java methods or C functions
# return codes are limited to 0-255 
# to get anything else from a function we assign it to a variable
# a regular variable has a scope of the whole script

function setUsername() 
{
if [ $# -gt 0 ] ; then
    echo $FUNCNAME expects no args, youre using it wrong
    return 1  # get out of function here 
fi
username=$(whoami)
#return  0   # this is done by bash, you don't have to do it
}

function setDate()
{
ISO8601=$(date +%F)
}

setUsername arggg
if [ $? -gt 0 ]  ; then
    echo \$username not set ...
else 
   echo \$username is set to $username
fi 
ISO8601=BLAHblah
echo \$ISO8601 $ISO8601
setDate
echo \$ISO8601 $ISO8601


