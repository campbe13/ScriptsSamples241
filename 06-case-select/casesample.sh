#!/bin/bash
# casesample.sh
# simple script using a case statement
# PMC
# 2016-02-15
#
read -p "Enter something> "  var
case $var in
	[0-9]) msg="a number";;
	a | A) msg=""the letter a"
	[b-z]) msg="a lower case letter";;
	boo) msg="the word boo";;
	15) msg="the number 15";;
	*) msg="dont know";;
esac
echo "You entered $var which is $msg"
exit 0