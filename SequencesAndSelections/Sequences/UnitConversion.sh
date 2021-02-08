#!/bin/bash 

foot (){     #a)
foot=12
var=1
if [ $foot -eq 12 ]
then
var=42
inch=$(($var/$foot))
              #bc is not working
echo "1ft=" $foot "in"
echo "42inch=" $inch "ft"
fi
}
rectangle (){    #b)
L=60
W=40
check=0
if [ $L -ne $check ]
then
Rectangle=$(($L * $W))
echo "Rectangle is :" $Rectangle
fi
}
foot;
rectangle;
