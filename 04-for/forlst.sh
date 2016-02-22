#!/bin/bash
# PMC
# feb 2016
# i have a list of file/dir names in a file
# use the file as input to a for statement
# determine if the entry is a file or a dir

for filen in $(cat list)
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
