#!/bin/bash 
read -p "Enter N values to get 2 pow N :" n
result=2;
for (( i=1;  i<$n; i++ ))
do
      result=$(($result*2 ));
done
echo "2 Power $n is:" $result
