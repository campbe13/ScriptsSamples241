#!/bin/bash
if [ $# -ne 1 ] ; then  echo "error need cli arg s" ; exit ;fi
echo $0 pattern, hit enter to apply:
cat $1 
read -p "hit enter to continue " notused
sed -rf $1 lines
