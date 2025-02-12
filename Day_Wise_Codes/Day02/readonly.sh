#!/bin/bash

#We need that the variable value should be constant and cannot be changed once defined

a=13
echo "$a"

a="sakshi"
echo "$a"

readonly b=50
echo "$b"
b="Sakshi"
echo"$b"
 #this is will give us error 
