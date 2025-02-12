#!/bin/bash


num=12

if [ $((num % 2)) -eq 0 ]; then 
echo "$num, Number is even"

else 
echo "$num, Number is odd"
fi
