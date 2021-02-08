#!/bin/bash  

limit=256;
result=1;
count=1
while [ $result != $limit ];
do
      result=$(( $result*2 ));
echo "2 pow $count is : "$result
((count++))
done



#read -p "Enter N values to get 2 pow N :" n
#result=2;
#for (( i=1;  i<$n; i++ ))
#do
 #     result=$(($result*2 ));
#done
#yecho "2 Power $n is:" $result



