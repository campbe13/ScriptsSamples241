#!/bin/bash
# PMCampbell
# February 14, 2013
# 
# sample script
# special variables

echo $0  '$0' name of script
echo $1  '$1' arg1
echo $2  '$2' arg2
echo $3  '$3' arg3
echo $4  '$4' arg4
echo $5  '$5' arg5

echo $#  '$#' count of args

echo $*  '$*' all cli args 
echo $@  '$@' all cli args 

echo $$  '$$' PID of this script 
echo $!  '$!' PID of the last background process

echo $?  '$?' status of last command which is an echo in this case

echo "hello world"
