#!/bin/bash 

declare -a arr
findTriplets () {
arr="$@"
n="${#arr[@]}"
found="false"
sum=0
for (( i=0; i<$(($n-2)); i++ ))
do
   for (( j=$(($i+1)); j<$(($n-1)); j++ ))
   do
     for (( k=$(($j+1)); k<n; k++ ))
     do
      #sum=$(( echo " `expr ${arr[$i]} + ${arr[$j]} + ${arr[$k]` " ))
      if [[ $((`expr ${arr[$i]} + ${arr[$j]} + ${arr[$k]}`))  -eq 0 ]]
      then
       echo ${arr[$i]}
       #echo " "
       echo ${arr[$j]}
       #echo " "
       echo ${arr[$k]}
       #echo " "
       found="true"
       echo " "

       fi
     done
   done
done
f="false"
if [[ $found -eq $f ]]
then
echo "not exist"
fi

}

arr=("0" "-1" "2" "-3" "1")
findTriplets "${arr[@]}"
