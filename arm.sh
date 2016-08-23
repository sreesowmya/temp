#!/bin/bash
#
#Checking whether given number is Armstrong number or not
#
n1=0
t=0
echo "enter n"
read n
t=$n

while [ $t != 0 ]
do
    m=`expr $t % 10`
    n1=`expr $m \* $m \* $m + $n1` 
    t=`expr $t / 10`
done
if [ $n -eq $n1 ]
then 
   echo "$n is an armstrong number"
else
   echo "$n is not an armstrong number"  
fi

