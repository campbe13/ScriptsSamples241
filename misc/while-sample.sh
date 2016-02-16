#!/bin/bash
# A script using while-loop
# guess the number
secret=5
###echo " guess the number I'm thinking"
##read guess

#while [ "$secret" !=  "$guess" ] 
while [ 5  !=  "$guess" ] 
do
echo "wrong, guess again "
read guess
done


echo " you guessed it $secret"
