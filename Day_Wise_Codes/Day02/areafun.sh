#!/bin/bash

#this contains code of area of circle

function Area(){
	r1=$1
	rad=$((r1*r1))
	area=$((22/7*rad))
	echo "Area of circle is: $area"
}

read rad
Area  rad
