#!/bin/bash
#
# Using $?
#
err()
{
if [ `echo $?` != 0 ]
   then
   echo ""
   tput setaf 1; echo  "error in input: File doesn't exist"
   
   else
   echo ""
   tput setaf 2; echo "File found and command is executed"
   echo ""
   
fi

}
### Main Script
fn1()
{
  echo "enter a file"
  read f
  cat $f
  #notify-send 'No '$f' file!' 'file does not exist'
  err ##Calling err() Function
}

fn2()
{
  echo "enter a file"
  read f
  rm $f
  err
}
 
