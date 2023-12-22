#!/bin/bash

while [ -f ~/Bureau/fichier.txt ]
do
	echo "Depuis le $(date), le fichier existe"
	sleep 5s
done

echo "Depuis le $(date), le fichier est manquant"

# here we are using the date command as a subshell to print out date info
# as you can see, the date updates along with the progression of the loop
