#!/bin/bash
#
# Script que dado un número como argumento
# nos dice si el número es positivo o negativo #
if [ $# -eq 0 ]
then
	echo "Uso: commando argumento"
	exit 1 
fi

if [ $1 -lt 0 ] 
then
	echo "$1 es negativo" 
else
	echo "$1 es positivo" 
fi