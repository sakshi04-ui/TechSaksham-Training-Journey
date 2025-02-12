#!/bin/bash


for((row = 1; row <= 5 ;row++))
do
for((col=1;col<=5;col++))
do
if [ $row -eq 1 ] ||[ $col -eq 3 ]; then
echo -n "* "
else
echo -n "  "
fi
done
echo
done
