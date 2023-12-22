#!/bin/bash

directory=/etc

if [ -d $directory ]
then
	echo $?
	echo "The directory $directory exists."
else
	echo $?
	echo "The direcotry $directory does not exist."
fi

# i altered the script so that the exit code value appropriately reflects our condition status
# notice how i put the exit code before and not after the echo that prints if the directory exists or not
# this is because if i put it after, the exit code will always be 0, because it will based on that echo statement, which we don't want
# move that line from above that echo statement to below it to test it
# again, just like in the last commit, the takeaway is where you put your exit code lines are very important
