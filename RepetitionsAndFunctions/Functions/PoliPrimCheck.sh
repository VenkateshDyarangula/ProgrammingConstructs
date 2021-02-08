#!/bin/bash -x
#Checking for Prime
primCheck (){
num=$1
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
poliCheck $num
}
#Checking for Polindrom
poliCheck (){
n=$1
check=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $check -eq $reverse ]
then
    echo "Number is palindrome"
    checked $reverse
else
        echo "Number is not palindrome"
fi
}

checked (){
n=$1
echo "Given Number is Prime and Polindromic:" $n
}

read -p "Enter the Number to check Prim and Plondrom: " n
primCheck $n

