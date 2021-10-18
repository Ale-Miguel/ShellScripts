#!/bin/bash
#
#Script que imprime el doble de cada numero entre 1 y 5.
#
for (( i = 0 ; i <= 5; i++ )) #OJO: esta vez i=0 sin espacios nope.. 
do
	echo "Welcome $((2 * $i)) times"
done