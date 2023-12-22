#!/bin/bash

while [ -f ~/Bureau/fichier.txt ]
do
	echo "The file exists"
	sleep 5s
done

echo "The file no longer exists. Exiting"

# Attention
# as long as the file in question exists, the echo statement in the while loop will continue to be printed
# this does not cause an infinite loop persé, but it surely behaves like one
# obviously when we remove the file, the loop stops
# do not see how this is relevant à l'instant
# the fans kicked in not too long after script execution, as expected
# to make things less overwhelming for the cpu and more readable, i will add the sleep command
# this will execute the code inside the while loop after every 5 seconds in my case
