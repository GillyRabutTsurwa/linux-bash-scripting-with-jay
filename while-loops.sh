#!/bin/bash

num=0

while [ $num -le 10 ]  # while num is less than or equal to 10
do
	echo $num # print the number
	num=$(( $num + 1 )) # increment the number (equivalent to num++ or num+=1 in JavaScript)
	sleep 2s # i think this acts like setTimeout in JavaScript
done
