#!/bin/bash
# la primera línea con un '!' como primer caracter
# del comentario indica qué intérprete se utilizará
# en este caso, bash ubicado en /bin/bash
# Este programa muestra como procesar, uno por uno, los 
# argumentos que se dan como entrada a un script.
# <-- este es el simbolo usado para definir un comentario
echo numero de argumentos: $#
# La variable $# contiene la cantidad de argumentos que 
# se le dieron al programa (arg)
# respaldamos la lista de los argumentos
ARGUMENTOS=$@
# La varialbe $@ contiene la lista de argumentos (argv) 
# Esta es la primera forma de hacerlo:
for arg in $@ 	#esto te muestra como iterar por las palabras de un string,
				#palabras separadas por espacios
do
	echo "argumento: $arg"
done

echo ""
# Esta es la segunda forma de hacerlo:
ARGNUM=$# # numero de argumentos

for ((VAR = 1 ; VAR <= $ARGNUM ; VAR++)) #OJO: dos paréntesis (()) cuidado con espacios
do
	echo "argumento (${VAR}) = $1" 
	shift
	# hace un corrimiento de la lista de argumentos: $@ ,
	# es decir, elimina el primer argumento.
	# Por ejemplo:
	#	si $@ contiene "1 2 3 4" entonces $1 vale: 1 
	#	después de ejecutar el comando: shift 
	#	$@ es igual a "2 3 4" y $1 vale: 2
	#
done

# Este es un cambio