#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Usage: backup.sh <source_directory> <target_directory>";
	echo "This script needs exactly 2 arguements";
	exit 1;
fi

if !command -v rsync &> /dev/null
then
	echo "This script requires rsync to be installed";
	echo "Please use your distribution's package manager to install";
	exit 2;
fi

current_date=$(date +%d-%m-%Y); # le date s'affiche dans ce format: jj-mm-aaaa (dd-mm-yyyy)

if [ ! -d $2 ]
then
	mkdir $2 --parents; # mkdir -p <directory_name> (for Mac)
fi

rsync_options="--archive --verbose --backup --backup-dir=$2/$current_date --delete";
$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log;

# Attention (mise-a-jour):
# ce code-ci:
# ./backup.sh text-files backup
# ne fonctionne pas pareillement que celui-ci:
# ./backup.sh text-files/ backup
# le premier code va copier le dossier "text-files" et tout ses contenants dans notre dossier backup
# alors que le deuxieme va copier seulement le contentants du dossier "text-files". Le dossier lui-meme ne sera pas transfere
# utiliser l'un ou l'autre selon vos besoins
