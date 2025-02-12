#!/bin/bash

a=0
b=1
echo "Enter number- "
read n
echo "Fibonnaci series upto $n-"
for((i = 1 ; i <= n ; i++))
do
echo "$a"
next=$((a+b))
a=$b
b=$next
done

