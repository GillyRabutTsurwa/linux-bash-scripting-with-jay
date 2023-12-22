#!/bin/bash

directory=/etc

if [ -d $directory ]
then
	echo "The directory $directory exists."
	exit 0
	echo "No, putting an echo statement here won't work either"
else
	echo "The direcotry $directory does not exist."
	exit 1
	echo "Neither will it work here"
fi

echo "You won't see this statement upon script execution"
echo "Celui-ci non plus"
echo "Neither will you see this one"

# IMPORANT
# we can use the exit keyword followed by a value to force the exit code value of the previous command, as i am doing here
# pretty much enforcing that value, regardless of the nature of that command
# that is lesson #1
# lesson #2 is that after an exit code, no other lines of code after that will be run
# the behaviour of the exit keyword is rather similar to that of the return keyword in javascript
# anything after the return keyword in javascript is inexecutable. same applies here
# the difference i do see however is that even the 3 last lines won't run, where as in javascript, they would run due to scope
# exit pretty much stops the processing of that file at that point; anything after that will be irrelevant
