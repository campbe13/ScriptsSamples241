#!/bin/bash
# PMC
# March (2012-2013-2014-2015-2016)
# using various regex to parse a telephone number

if [ $#  -eq 0 ] ; then 
   echo $(basename $0 ): need a cli arg
   exit
fi
# basic regex 
echo -n "basic regex: "
if [[ "$1" =~  ^\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}$ ]] ; then
    echo "North american phone number (999)-999-9999 or 999-999-9999"
else 
    echo not North American $1
fi 
# posix regex
echo -n "Posix regex: "
if [[ "$1" =~  ^\(?[[:digit:]]{3}\)?-[[:digit:]]{3}-[[:digit:]]{4}$ ]] ; then
    echo "North american phone number (999)-999-9999 or 999-999-9999"
else 
    echo not North American $1
fi 
echo "This won't work in current versions of bash"
echo -n "Shortcuts: " 
# shortcuts regex  (do not work in later versions of bash  (nor gnu sed))  :(
if [[ "$1" =~  ^\(?\d{3}\)?-\d{3}-\d{4}$ ]] ; then
    echo "North american phone number (999)-999-9999 or 999-999-999"
else 
    echo not North American $1
fi 
