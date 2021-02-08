#!/bin/bash -x
read -p "Enter the Number for pattern:" n
for ((i=1; i<=n; i++ ))
do
    o=1
    h+=$o/$i+ 
done
echo "Hn=" $h
