#!/bin/bash
#pmc
# march 10, 2014
# useful functions
sn=$(basename $0)
# script needs 2 cmd line args, both must be files
source ./functionsonly.sh.inc 

usage $*
case $? in
    1) echo "exit with 1"
	 exit;; 
    5) echo "exit with 5" ; exit;; 
    10) echo "exit with 10" ; exit;; 
    *) echo "its ok";;
esac
# everything is ok here    
filesizeb $1
echo $1 size $fsize
filesizeb $2
echo $2 size $fsize
