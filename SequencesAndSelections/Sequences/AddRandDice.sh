#!/bin/bash -x
#Add to Random numbers to printing thr result
Digit1=$((RANDOM%6+1))
Digit2=$((RANDOM%6+1))
echo "Addition of two RANDOM Dice Number:" $(($Digit1+$Digit2))
