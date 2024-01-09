#!/bin/bash

logfiles=./logfiles/*.log
logfiles_zipped=./logfiles/*.tar.gz

for current_file in $logfiles
do
	tar -czvf $current_file.tar.gz $current_file
done

echo "Here is the updated listing of files in the logfiles directory:"
ls logfiles # not to be confused by $logfiles (which is the variable name defined above. here i am referring to the logfiles directory itself)
echo "Deleting all .tar.gz files in 10 seconds..." # i'm doing this so that i do not have to delete the files manually (really i am doing this because: why not?)
sleep 10s

for current_zipped_file in $logfiles_zipped
do
	rm $current_zipped_file
	if [ $? -ne 0 ]
	then
		echo "There was a problem removing the zipped files"
		echo "Process failed with an exit code of $?"
		break
	fi
done

echo "Here are the contents of the logfiles directory:"
ls logfiles
echo "Over & Out"
