#!/bin/bash
#
#
echo "enter a file"
read f
rm $f
[ `echo $?` -eq 0 ] && echo "file $f removed" || echo "file $f not found"
