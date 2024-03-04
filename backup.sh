#!/bin/bash

# un peu de nettoyage avant d'executer le script
# ca me servira bien pour le moment
rm -rf $1/backup;
rm $1/*.log;

if [ $# -ne 3 ]
then
	echo "Usage: backup.sh <parent_directory> <source_directory> <target_directory>";
	echo "This script needs exactly 3 arguements";
	echo "Try again";
	exit 1;
fi

if [ ! -d "backup" ]
then
	mkdir $1/backup;
fi

if !command -v rsync &> /dev/null
then
	echo "This script requires rsync to be installed";
	echo "Please use your distribution's package manager to install";
	exit 2;
fi

current_date=$(date +%d-%m-%Y);
# --archive (-a) = archive mode
# --verbose (-v) = verbose
# --backup (-b) = does not replace files in the target file if file already exists in target
# --backup-dir = directory location for the backup. this flag is used in conjunction with the --backup (-b) flag
# --delete = makes sure target directory is a clone of the source directory. use with caution. deleting a folder in the source directory and re-running rsync will delete in the target directory
# but with -b and --backup-dir options, nothing will actually be deleted. they will instead be moved to the backup directory
# --dry-run: IMPORTANT: this will perform a test run of your command and not actually execute anything. this is paramount in testing your scripts
rsync_options="--archive --verbose --backup --backup-dir $2/current_date --delete"; # le meme code que celui dessus sans l'option de tester (--dry-run). les options ont ete aussi eloignees

$(which rsync) $rsync_options $2 $3/current >> backup_$current_date.log;

# Attention:
# ce code-ci:
# ./backup.sh text-files backup
# ne fonctionne pas pareillement que celui-ci:
# ./backup.sh text-files/ backup/
# le premier code va copier le dossier "text-files" et tout ses contenants dans notre dossier backup
# alors que le deuxieme va copier seulement le contentants du dossier "text-files". Le dossier lui-meme ne sera pas transfere
