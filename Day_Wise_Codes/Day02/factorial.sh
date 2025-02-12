#!/bin/bash

#printing factorial of number

read n
re=1
for ((i=1;i<=n;i++))
do
re=$((re * i))
done

echo "$re"
