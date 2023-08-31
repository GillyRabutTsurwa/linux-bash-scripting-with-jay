#!/bin/bash

# NOTE: variables don't persist. they are tied to that session only
# therefore when we ran variables using a script, the variables are declared a new each time

firstName="Gilbert"
middleName="Rabut"
lastName="Tsurwa"
adjective="awesome"

# IMPORTANT: variable whose value is a shell command. this is called a subshell
# i understand: ls, the way i would generally use it, is like: ls()
# but here i am storing it's "return" value in a variable
files=$(ls)
currentDir=$(pwd)
now=$(date)
# i know this is not JavaScript, but the for the above variables, i think of them as follows:
# files = ls();
# currentDir = pwd();
# now = date();
# the above commented examples is not bash code, but simply examples that i've come up with ...
# ...upon making a connection between bash & JavaScript

echo $firstName
echo $middleName
echo $lastName

echo ""

echo "My name is $firstName $middleName $lastName" #concatenation
# for above example: if i was to use single quotes, the values of the variables would NOT be printed
# this works with double quotes only

echo ""

echo "Linux is $adjective"
echo "Videogames are $adjective"
echo "Sunny days are $adjective"

echo ""

echo $files
echo $currentDir

echo ""

echo "The system time & date is: $now"

echo ""

# IMPORTANT: you also have access to linux's default environment variables like SHELL, USER, etc
# to get a list of your default environment variables, use the "env" command
echo "Your username is $USER"
echo "Your current shell is $SHELL"
