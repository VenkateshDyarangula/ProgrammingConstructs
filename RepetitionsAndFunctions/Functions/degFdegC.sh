#!/bin/bash -x

echo " Converting between the different temperature scales "
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice
 
if [ $choice -eq 1 ]
then
	echo -n "Enter temperature (Celsius) Range [0-100] : "
	read tc
	# formula Tf=(9/5)*Tc+32
	tf=$(( $tc * 9 / 5 + 32 ))     #spce for every Arithmatic Operator
	echo "$tc C = $tf F"
elif [ $choice -eq 2 ]
then
	echo -n "Enter temperature (Fahrenheit) Range [32-212] : "
	read tf
	# formula Tc=(5/9)*(Tf-32) 
	tc=$(( ($tf - 32) * 5 / 9 ))
	echo "$tf F = $tc C"
else
	echo "Please select 1 or 2 only"
	exit 1
fi
