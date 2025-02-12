#!/bin/bash

row=0
while [ $row -le 4 ]
do
col=0
while [ $col -le 4 ]
do
if [ $row -eq 0 ] && [ $col -eq 2 ];
then
echo -n "*"
elif [ $row -eq  1 ] && [ $col -eq 1 ];
then
echo -n "*"
elif [ $row -eq 1 ] && [ $col -eq 3 ];
then
echo -n "*"
elif [ $((col % 4)) -eq 0 ] && [ $row -ge 2 ];
then
echo -n "*"
elif [ $row -eq 3 ];
then
echo -n "*"
else
echo -n " "
fi
((col++))
done
echo
((row++))
done
