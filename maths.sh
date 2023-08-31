#!/bin/bash

# we use the expr keyword to make simple maths calculations

expr 30 + 10
expr 30 - 10
expr 30 / 10

# IMPORTANT: for multiplication, expr 30 * 10 will not work
# this is because the asterisk symbol is a wild card for everything, and thus won't make sense for us here
# the solution will be to escape the asterisk to make it work

expr 30 \* 10

# on peut utiliser les variables aussi
numOne=100
numTwo=250

expr $numOne \* $numTwo
