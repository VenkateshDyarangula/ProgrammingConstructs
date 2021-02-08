#!/bin/bash -x
#Random to get Dice Digit from 1to 6
RanDigit=$(( RANDOM%6+1 ))
echo "Dice Number from 1 to 6:" $RanDigit
