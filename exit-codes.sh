#!/bin/bash

package=nonexistent # toggle this value to existing and non-existing packages in order to see the difference

sudo apt install $package

# here, i am using checking if the exit code is equal to 0
# the exit code is stored in the variable "$?" and it checks the status of the previous command
# an exit code with the value of 0 means that the previous command was successfully executed with no errors
# but an exit code whose value is a non-zero number signifies a failed command

# anyways, i am checking if the exit code of the above command, "sudo apt install $package" is 0
if [ $? -eq 0 ]
then 
	# if the exit code is indeed 0, print these messages...
	echo "The installation of the package was successful"
	echo "The new command is available here:"
	# ... as well as the location of the package
	which $package
else
	# Otherwise, print this
	echo "The package failed to install"
fi
