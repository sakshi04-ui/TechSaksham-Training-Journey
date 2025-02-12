#!/bin/bash

echo "Enter the number: "
read num1
read num2
read num3
read num4

if   [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ] && [ $num1 -gt $num4 ];
then
echo "$num1, is graetest"

elif  [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ] && [ $num2 -gt $num4 ];
then
echo "$num2, is greatest"


elif  [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ] && [ $num3 -gt $num4 ];
then
echo "$num3, is greatest"

else 
echo "$num4, is greatest"

fi
