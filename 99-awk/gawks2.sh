#!/bin/bash
#pmc
#march 2012
#gawk example
if [[ $# -ne 1 ]] ; then
  echo Usage $(basename $0) filename
  exit 1
fi
(date ; cat $1) | 
gawk ' NR == 1 { print "Report for", $1, $2, $3", " $6 }
NR > 1 { print $5 "\t" $1 } 
END { print "Finished" } '
