#!/bin/bash

# make a checkedFile folder and remove it to see the if statement in action
# -f stands for file. -d stands for directory
# these are what we use when working with files and folders; particularly checking on them
# i also go through the which command, but i may not write any code for this one. hence the comment
if [ -f ./checkedFile ]
then
	echo "Le fichier existe"
else
	echo "Le fichier n'existe pas"
fi
