#!/bin/bash

#How to take user input
#read -p "Emter the number " num

read -p "Enter the number " num1
read num2
#read -p "Enter the second number " num2

if [ $num1 -gt $num2 ];
then
echo "$num1, is greate than $num2"

else
echo "$num2, is greater than $num1"
fi

