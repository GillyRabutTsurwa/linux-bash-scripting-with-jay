#!/bin/bash

lines=$(ls -lh $1 | wc -l);

# IMPORTANT: we use the special $# variable to determine the number of arguments we have set up in our script
# so we can do something like this:

if [ $# -ne 1 ] # if we don't get exactly one arguement in the script
then
	# the run this code that will eventually stop script execution
	echo "This script requires exactly one arguement";
	echo "Try again";
	echo "Stopping script execution";
	sleep 1s;
	exit 1; # NOTE: techinically there's no failure, so i am enforcing an exit code because the script did not work as intended if we have gotten to this point
fi

echo "You have $((lines-1)) objects in the $5 directory";
