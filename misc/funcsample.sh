#!/bin/bash
# funcsample.sh
# A script using functions
name=`basename $0`
Usage="Usage:$name parameters"
# a function

isint()
{
case "$1" in
    [-+]) return 1;;
[-+]*[^0-9]*) return 1;;
      [-+]*) return 0;;
   *[^0-9]*) return 1;;
      *) return 0;;
esac
}
fhelp()
{
cat<<EOT
$Usage
This script is an example....
EOT
exit 1
}
if [  $# != 1 ]; then  fhelp 
fi
if isint $1; then
echo �... Yep, it was an integer�
else
echo �...nope, not an integer�
fi