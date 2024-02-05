#!/bin/bash

echo "What is your favourite Linux distribution?";

echo "1 - Arch";
echo "2 - CentOS";
echo "3 - Debian";
echo "4 - Mint";
echo "5 - Ubuntu";
echo "6 - Something else...";

read distro;

case $distro in
	1) echo "Arch is a rolling release";;
	2) echo "CentOS is popular on servers";;
	3) echo "Debian is a community distribution";;
	4) echo "Mint is popular on desktops and laptops";;
	5) echo "Ubuntu is popular on both servers and computers";;
	6) echo "There are many distributions out there";;
	*) echo "This isn't an appropriate choice";
esac

# Some notes
# in the case statement, the distro value (which in this case is user input is the value before the parantheses
# so in the first line, the value of $distro is 1, and in the second line, it's value is 2, and so on
# a single case must always end in double semi-colons
# the last line, in which we put "*" as the value for distro, is a catch-all case. anything else that is not specified above will be covered here
