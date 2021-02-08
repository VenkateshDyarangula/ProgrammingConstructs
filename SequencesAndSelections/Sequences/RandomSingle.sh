#!/bin/bash -x
#Use Random Function ((RANDOM)) to generate Single Digit
SingleDigit=$(( RANDOM%9 ))
echo "Random to get Single Digit:" $SingleDigit
