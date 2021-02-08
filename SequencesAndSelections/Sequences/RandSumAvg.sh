#!/bin/bash -x

echo "Taking Two digit values from RANDOM function"

D1=${RANDOM:0:2}
D2=${RANDOM:0:2}
D3=${RANDOM:0:2}
D4=${RANDOM:0:2}
D5=${RANDOM:0:2}
sum=$(($D1 + $D2 + $D3 + $D4 + $D5))
avg=$(($sum/5))
echo "Sum and Avg is:"$sum  $avg

