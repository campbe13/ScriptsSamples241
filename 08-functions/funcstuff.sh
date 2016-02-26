#!/bin/bash
#pmc
# march 10, 2014
# useful functions
sn=$(basename $0)

###source ./functionsonly.sh

# to use this function: 
# filesizeb <filename>
# get file size in bytes in fsize
# file name is argument to function
# file size is set in global var fsize
# return 0 - everything a-ok
# return 1 - no cli args
filesizeb () {
 if [ $# -eq 0 ] ; then
    fsize=0
    return 1 
 fi
 fsize=$(du -b $1  |cut -f 1)
}

# to use this function: 
# usage $*
# script needs 2 cmd line args, both must be files
# return 0 - everything a-ok
# return 1 - no cli args
# return 5 - root running script
# return 10 - cli args not files
usage () {
  if [ $# -ne 2 ] ; then
     echo Usage: $sn file1 file2
     return 1
  fi
  if [ "$USER" == "root" ] ; then
     echo $sn: root shall not pass
     return 5
  fi
  for fn ; do
    if [ -f $fn ] ; then
      continue
    else 
       echo Usage: $sn file1 file2 must be files
       return 10
    fi
  done
  return 0 # ret code of last command if not here  
}  

##main code

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
