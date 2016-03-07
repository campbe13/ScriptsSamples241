#!/bin/bash
# pmc
#2013-03-29
# regex  & posix 
function readstr()
{
read -p "enter a string " str
}
readstr
while [[ ! "$str" =~ [qQ] ]] ; do 

if [[ "$str" =~ [[:digit:]] ]] ; then
 echo  -n match 
else
 echo -n  no match
fi
echo ' [[:digit:]] ' string $str

if [[ "$str" =~ [^[:digit:]] ]] ; then
 echo  -n match 
else
 echo -n  no match
fi
echo ' [^[:digit:]] ' string $str
readstr
done
