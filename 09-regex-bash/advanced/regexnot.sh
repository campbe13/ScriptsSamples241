#!/bin/bash
# pmc
#2013-03-29
# regex
function readstr()
{
read -p "enter a string " str
}
readstr
while [[ ! "$str" =~ [qQ] ]] ; do 

if [[ "$str" =~ [^aA] ]] ; then
 echo  -n match
else
 echo -n  no match 
fi
echo ' [^Aa] ' string $str

if [[ "$str" =~ ^[^aA]+$ ]] ; then
 echo  -n match
else
 echo -n  no match 
fi
echo ' ^[^Aa]+$ ' string $str

readstr
done
