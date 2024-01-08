#!/bin/bash

release_file=/etc/os-release
# the os-release file is a file that is apparently found in all Linux-based operating systems
# it seems to be a file that contains some simple data about our machine's operating system

# we are checking to see if the word "Arch" exists in that os-release file (-q stands for quiet ouput; don't print anything out)
if grep -q "Arch" $release_file
then
	# if the word "Arch" exists in that file, the host is based on Arch Linux, run the pacman update command
	sudo pacman -Syu
elif grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
	# else if the words "Pop" OR "Ubuntu" exist instead, the host is based on Debian or Ubuntu
	# Run the apt version of the command
	# Our host (PopOs!) is based on Ubuntu so this is what would run
	sudo apt update && neofetch
	sudo apt list --upgradable
	# sudo apt dist-upgrade # leaving this code out until i am confident enought to execute it

fi

# i will improve this script over time, as i plan on using this on my machine
