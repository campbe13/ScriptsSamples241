#!/bin/bash
# the class
# march 9, 2012
# parse cmd line args, tell if file or dir

for filen in $@
 do
  if [ -d $filen ] 
    then 
     echo $filen  is a directory
    elif [ -f $filen ] ; then
       echo "$filen  is a regular file"
      else
       echo $filen is something else
  fi
done
