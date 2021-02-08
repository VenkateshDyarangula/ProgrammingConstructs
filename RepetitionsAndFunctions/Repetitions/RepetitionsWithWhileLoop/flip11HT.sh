#!/bin/bash -x  

random=$((RANDOM%2))
flips=0
heads=0
tails=0
count=0
count2=0
while [ $flips -lt 11 ]
do
   if [ $random -eq 1 ]
    then
         
         echo "Heads"
            echo $count+=1
          ((count++)) 
   else
        
        echo "tails"
           echo $count2+=1
        ((count2++))
   fi
    ((flips++))
done
if [ $random -eq 1 ]
then
   echo "head are:" $count
else
   echo " tails are:" $count2
fi



