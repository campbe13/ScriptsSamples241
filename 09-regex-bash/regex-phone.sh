#!/bin/bash
# PMC
# March (2012-2013-2014-2015-2016)
# using various regex to parse a telephone number

if [ $#  -eq 0 ] ; then 
   echo $(basename $0 ): need a cli arg
   exit
fi
# basic regex  no shortcuts
if [[ "$*" =~  ^\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}$ ]] ; then
    echo "North american phone number (999)-999-9999 or 999-999-9999"
else 
    echo not North American $1
fi 
# posix regex
if [[ "$1" =~  ^\(?[[:digit:]]{3}\)?-[[:digit:]]{3}-[[:digit:]]{4}$ ]] ; then
    echo "North american phone number (999)-999-9999 or 999-999-999"
else 
    echo not North American $1
fi 
# shortcuts regex
if [[ "$1" =~  ^\(?\d{3}\)?-[[:digit:]]{3}-[[:digit:]]{4}$ ]] ; then
    echo "North american phone number (999)-999-9999 or 999-999-999"
else 
    echo not North American $1
fi 
