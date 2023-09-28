#!/bin/bash

myNum=300

# NEW: -ne stands for "not equal"
# -gt = "greater than"
# -lt = "less than"
# il y a probablement plus que ça mais je m'arrête ici
if [ $myNum -ne 200 ]
then
	echo "Condition est vraie"
else
	echo "La valeur n'est pas ce que l'on attend"
fi
