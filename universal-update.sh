#!/bin/bash

if [ -d /etc/pacman.d ]
then
	# The host is based on Arch Linux, run the pacman update command
	sudo pacman -Syu
elif [ -d /etc/apt ]
then
	# The host is based on Debian or Ubuntu
	# Run the apt version of the command
	# Our host (PopOs!) is based on Ubuntu so this is what would run
	sudo apt update && neofetch
fi
