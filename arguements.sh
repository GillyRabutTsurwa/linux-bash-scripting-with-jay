#!/bin/bash

lines=$(ls -lh $5 | wc -l);

# the $n syntaxe is how to add arguements to your scripts
echo "You entered the arguement: $1";

# you can add multiple arguements
echo "You entered more arguements: $2, $3, $4";

# i must have missed this in the mathematics lesson
# the way to evaluate and output maths expressions is by using the $(()) syntaxe
# found the solution in this article: https://www.shell-tips.com/bash/math-arithmetic-calculation/#gsc.tab=0
echo "You have $((lines-1)) objects in the $5 directory";
