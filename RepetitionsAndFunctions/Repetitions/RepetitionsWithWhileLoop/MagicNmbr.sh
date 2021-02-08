#!/bin/bash 
read -p  "enetr a number between 1-100 only:" n

while [[ $n -lt 100 ]] 
do
   for (( i=1; i<$n; i++))
   do
    temp=$(($n/2))
   echo $temp
   done
done


