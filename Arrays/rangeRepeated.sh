#!/bin/bash -x

declare -a array
counter=0;
storeInArray (){
  value=$1
  if [[ "${array[*]}" != *"$value"* ]]
  then
  array[counter]=$value;
  ((counter++));
fi;
}
isPoli (){
num=$1
s=0
rev=""
temp=$num

while [ $num -gt 0 ]
do
    s=$(( $num % 10 ))
    num=$(( $num / 10 ))
    rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ]; 
then
    return 1 
fi
}

for (( i=11; i<=100; i++)) 
do

    isPoli $i
    temp="$?"
   if [ $temp  -eq 1 ]
     then 
        storeInArray $i
    fi
done
echo "Repeated Values between (0-100) are Store in array:" [${array[@]}]
