#!/bin/sh
#
#Script to test while statement #
#
n=$1
i=1

while [ $i -le 10 ]
do
	echo "v= `expr $((2 * $i))`"
	i=`expr $i + 1` 
done