#!/bin/bash
# pmcampbell
# 2019-03-11
# script to use a function and set a return code

function fhelp() 
{
 cat <<EOMSG
 $(basename $0) parameters 
 This script is an example
 of using a function
EOMSG
 echo $FUNCNAME
 return 3
}

if [[ $# -le 0 ]]  ; then
    fhelp
    # echo $?    
    rc=$?
    echo func return $rc
    exit $rc
fi
