#!/bin/bash -x


polindrom (){
n=$1
temp=$n
#other=$2
#temp2=$other
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $temp -eq $reverse ]
then
    echo "Number is Polindroms"
      return 1
else
	echo "Number is not palindrome"
        
      return 0
fi
}
echo "Enter the first number"
read -p : n
echo "Enter other to check with"
read -p : other
polindrom $n
poli="$?"
if [ $poli -eq 1 ]
then
    polindrom $other
    poli2="$?"
    if [ $poli2 -eq 1 ]
    then
       echo "Two are polindroms"
    else
        echo "Two are not polindroms"
    fi
fi

