#!/bin/bash
# variable now equals the command, and not the path to the command
programme=htop
# the command "command -v" lets us know if a specific command is available
# also i realised that you can run htop using "htop" or "/usr/bin/htop"
if command -v $programme
then
	echo "$command is available. Let's run it"
else
	echo "$command is NOT available. Installing it"
	sudo apt update && sudo apt install -y $programme
fi

$command

# voici ce qui fait le code là-dessûs
# il cherche la ficher qui sert à démarrer et gerer le package htop
# si le fichier existe, on écrira à l'écran que htop est disponible et on va executer le package
# si non, on écrira que le package n'est pas disponible et on va installer ce package-là
# après l'avoir installé, on execute

