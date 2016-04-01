#!/bin/bash
#pmc
#march 2012
#gawk examples
# test gawk expressions against a file given at command line

if [ $# -eq 0 ]
then
   echo Usage: $(basename $0 )  carsfile
else 

echo ' { print } ' $1
gawk ' { print } ' $1
echo '/chevy/'	$1
gawk '/chevy/'	$1
echo '{ print $3, $1 }' $1
gawk '{ print $3, $1 }' $1
echo '/chevy/ { print $3, $1 }' $1
gawk '/chevy/ { print $3, $1 }' $1
echo '/h/ { print $3, $1 $2 }' $1
gawk '/h/ { print $3, $1 $2 }' $1
echo '$1 ~ /h/ ' $1
gawk '$1 ~ /h/ ' $1
echo '$2 ~ /^h/ ' $1
gawk '$2 ~ /^h/ ' $1
echo '$2 ~ /^[tm]/  {print $3, $2, "$" $5 }' $1
gawk '$2 ~ /^[tm]/  {print $3, $2, "$" $5 }' $1
echo '$3 == 1985 ' $1
gawk '$3 == 1985 ' $1
echo '$5 <= 3000 ' $1
gawk '$5 <= 3000 ' $1
echo "numeric comparison"
echo '2000 <= $5 && $5 < 9000 ' $1
gawk '2000 <= $5 && $5 < 9000 ' $1
echo " string comparison "
echo '"2000" <= $5 && $5 < "9000" ' $1
gawk '"2000" <= $5 && $5 < "9000" ' $1
echo '/volvo/ , /bmw/' $1
gawk '/volvo/ , /bmw/' $1
echo '/chevy/ , /ford/' $1
gawk '/chevy/ , /ford/' $1
echo '$0 = whole line'
echo gawk '{print length, $0}' $1
gawk '{print length, $0}' $1
echo 'length of line & NR (record number)'
echo 'length > 24 {print NR}' $1
gawk 'length > 24 {print NR}' $1
echo  'lines 2 & 3 & 4'
echo 'NR == 2, NR == 4 ' $1
gawk 'NR == 2, NR == 4 ' $1
echo gawk 'NR == 2 || NR == 4 ' $1
gawk 'NR == 2 || NR == 4 ' $1
echo last line print NR
echo 'END {print NR, "cars for sale." } ' $1
gawk 'END {print NR, "cars for sale." } ' $1
fi
