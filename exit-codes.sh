#!/bin/bash

package=nonexistent

sudo apt install $package >> command-output.log

if [ $? -eq 0 ]
then 
	echo "The installation of the package was successful"
	echo "The new command is available here:"
	which $package
else
	echo "The package failed to install" >> command-failure.log
fi
