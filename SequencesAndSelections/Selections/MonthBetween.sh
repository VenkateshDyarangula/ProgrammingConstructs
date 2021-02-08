#!/bin/bash -x

echo "Enter a Day and Month Between (Mar'20 and 20'Jun) only"
read -p " Enter Date:-" date 
read -p " Enter Month:-" Month

if (( ($Month >= 3  & $Month<=6) & ($date >= 20) ))
then
        echo $Month $date "True";
elif (( ($Month > 3 &  $Month <=6 ) & ($date<31)  ))
then
        echo $date $Month "True";
else
        echo "False";
fi
