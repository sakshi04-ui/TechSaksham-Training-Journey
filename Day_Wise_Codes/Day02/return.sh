#!/bin/bash

# "$#" returns no of arguments
# "$?" prints or access the return from function
# "$0" returns file name
function Data(){

r1=$1
r2=$2

res=$((r1+r2))
echo "Number of arguments : $#"
return $res
}

Data 1 2
a=$?
echo "$a"

#Another method to print return statement
Data 5 7
echo "$?"

#how to get file name: $0 gives us the filename
echo "$0"
