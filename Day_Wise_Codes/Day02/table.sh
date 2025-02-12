#!/bin/bash

#printing table of 2 using for loop - second method
j=2
for i in {1..10}
do
table=$(( i * j ))
echo "2 x $i = $table"
done

echo ""

#printing table of 3 using  first method

for(( tb = 3 ; tb <= 30 ; tb=tb+3))
do
echo "$tb"
done

echo ""

#printing table of 4 using method 2 but remainder logic

for i in {4..40}
do
re=$((i%4))
if [ $re -eq 0 ];
then
echo "$i"
fi
done
