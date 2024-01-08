#!/bin/bash

for current_number in {1..10} # this bracket syntaxe does the same thing is much simpler than doing: 1 2 3 4 5 6 7 8 9 10
do
	echo $current_number
	sleep 2s
done
echo "Tu es sortie le boucle"
