#!/bin/bash
# pmc
#2013-03-29
# regex
function readstr()
{
read -p "enter a string " str
}
readstr
while [[ "$str" =~ [^qQ] ]] ; do 

if [[ "$str" =~ [02]{2,} ]] ; then
 echo match 
else
 echo no match
fi
echo ' [0-9]{2} ' string $str

if [[ "$str" =~ [0-9]+ ]] ; then
 echo match 
else
 echo no match
fi
echo ' [0-9]+ ' string $str
readstr
done
