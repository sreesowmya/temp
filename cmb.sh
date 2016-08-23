#!/bin/bash
#
#Calling functions in case
#
arm()
{
#Checking whether given number is Armstrong number or not
#
notify-send 'Armstrong Number'
echo "you called ${FUNCNAME}()"
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
}
fib()
{
#fibonacci series
notify-send 'Executing Fibonacci Series'
echo "you called ${FUNCNAME}()"
echo "enter length"
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
}
rev()
{
#reverse of a number
#
notify-send 'Executing reverse of a number'
echo "you called ${FUNCNAME}()"
echo "enter number to be reversed"
read n
rev=0
temp=$n
while [ $n != 0 ]
do
   rev=`expr $rev \* 10`
   rev=`expr $rev + $n % 10`
   n=`expr $n / 10`
done
echo "the reverse of $temp is $rev" 
}

###Main script

echo "enter any option from arm..fib..rev"
read choice
case $choice in
      "arm") arm ;;
      
      "fib") fib ;;
 
      "rev") rev ;;
      
      *) echo "Enter valid input"
esac
echo "end of script"
