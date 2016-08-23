#!/bin/bash
#
#fibonacci series
read n
a=1
b=-1
c=0
while [ $c -lt $n ]
do
c=`expr $c + 1`
temp=`expr $a + $b`
echo -n "$temp"
b=$a
a=$temp
done
echo ""

