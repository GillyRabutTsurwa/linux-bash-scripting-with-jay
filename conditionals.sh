#!/bin/bash

command=/usr/bin/htop

if [ -f $command ]
then
	echo "$command is available. Let's run it"
else
	echo "$command is NOT available. Installing it"
	sudo apt update && sudo apt install -y htop
fi

$command

# voici ce qui fait le code là-dessûs
# il cherche la ficher qui sert à démarrer et gerer le package htop
# si le fichier existe, on écrira à l'écran que htop est disponible et on va executer le package
# si non, on écrira que le package n'est pas disponible et on va installer ce package-là
# après l'avoir installé, on execute

