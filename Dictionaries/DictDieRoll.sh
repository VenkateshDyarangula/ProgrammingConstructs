#!/bin/bash -x

function init_DiesCount(){
    for (( i=1; i<=6; i++ ))
    do
     DiesCount[$i]=0
    done
}
#roll a die
function generateRollingDieNumbers (){
    rand=$(( RANDOM%6 + 1 ))
    storeInDictionary $rand
}
#Storingin Dictionary
storeInDictionary (){
  key=$1
  DiesCount[$key]=$(( ${DiesCount[$key]} + 1 ));
}
 
#die;
isLimitReached (){
    while [[ ${DiesCount[1]} -ne 10 && ${DiesCount[2]} -ne 10 && ${DiesCount[3]} -ne 10
              && ${DiesCount[4]} -ne 10 && ${DiesCount[5]} -ne 10 && ${DiesCount[6]} -ne 10 ]]
    do
      generateRollingDieNumbers
    done
}
init_DiesCount
isLimitReached

echo "Key are:" ${!DiesCount[@]}
echo "Values are:" ${DiesCount[@]}
