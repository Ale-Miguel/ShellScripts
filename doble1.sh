#!/bin/bash
#
#Script que imprime el doble de cada numero entre 1 y 5. 
#
for i in 1 2 3 4 5
do
	echo "v=`expr $((2 * $i))`" 
done