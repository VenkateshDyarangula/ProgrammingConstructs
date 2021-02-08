#!/bin/bash -x

echo "Reading 5 Numbers From ((RANDOM)) function"
D1=${RANDOM:0:3}
D2=${RANDOM:0:3}
D3=${RANDOM:0:3}
D4=${RANDOM:0:3}
D5=${RANDOM:0:3}
arrayName=($D1 $D2 $D3 $D4 $D5)
echo "Original Array:" ${arrayName[@]}
max=${arrayName[0]}
min=${arrayName[0]}
# Loop through all elements in the array
for i in "${arrayName[@]}"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]
    then
        max="$i"
    fi

    # Update min if applicable
    if [[ "$i" -lt "$min" ]]
    then
        min="$i"
    fi
done
# Output results:
echo "Max is: $max"
echo "Min is: $min"
