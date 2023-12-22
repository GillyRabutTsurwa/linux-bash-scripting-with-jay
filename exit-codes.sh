#!/bin/bash

directory=/nonexistent

if [ -d $directory ]
then
	echo "The directory $directory exists."
else
	echo "The direcotry $directory does not exist."
fi

echo "The exit code for this script run is $?"

# IMPORTANT
# notice how even if i simulate an error, like i am doing when i change the directory value to /nonexistent...
# ... i still get an exit code of 0
# this is because the value of the exit code is actually based on the echo statements
# meaning, if the echo statements will run ― even the one that is supposed to when the if statement results to false ―
# then the exit code will be 0
# the takeaway here is the placement of your exit code lines is very important
