#!/bin/bash
#
#passing arguments to a function

###function 1

func1()
{
   echo "${FUNCNAME}()" 
   echo "first argument is $1"
   echo "sec argument is $2"
   echo ""
   echo "total arguments passed are $#"
}

###function 2

func2()
{ 
   echo "${FUNCNAME}()"
    m=$1
    n=$2
   echo "$m + $n=`expr $m + $n`"
}

###function 3

func3()
{
   echo "${FUNCNAME}()"
   echo "enter x"
   read x
   echo "enter y"
   read y
   func2 $x $y
   echo "end of script"
}

##invoking function
#func1
#func2
#func3
