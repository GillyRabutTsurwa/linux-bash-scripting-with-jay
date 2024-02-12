#!/bin/bash

# so i actually worked on functions in my update script
# donc, le code ici dedans ne sera pas celui trouve dans la lecon
# neanmoins, je vais pratiquer

sayHello() {
	echo "Hello from the sayHello function";
	uname -a;
}

ditSalut() {
	echo "Bonjour depuis de la fonction ditSalut";
	neofetch;
}

sayHello;
echo;
ditSalut;
