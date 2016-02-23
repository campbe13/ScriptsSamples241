#!/bin/bash
# A script using functions
name=`basename $0`
Usage=“Usage: $name parameter”
# a function

isint()
{
case “$1” in
[-+])		  return 1;;
[-+]*[^0-9]*) return 1;;
[-+]*) 		  return 0;;
*[^0-9]*) 	  return 1;;
      *)      return 0;;
esac
}

fhelp()
{
  cat<<EOT
  $Usage
  This script is an example….
EOT
}

if [  $# != 1 ]; then  
   fhelp 
elif isint $1; then
   echo ‘… Yep, its an integer’
  else
  echo ‘…nope, not an integer’
fi

