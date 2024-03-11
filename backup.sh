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

current_date=$(date +%d-%m-%Y);

# --archive (-a) = archive mode
# --verbose (-v) = verbose
# --backup (-b) = does not replace files in the target file if file already exists in target
# --backup-dir = directory location for the backup. this flag is used in conjunction with the --backup (-b) flag
# --delete = makes sure target directory is a clone of the source directory. use with caution. deleting a folder in the source directory and re-running rsync will delete in the target directory
# but with -b and --backup-dir options, nothing will actually be deleted. they will instead be moved to the backup directory
# --dry-run: IMPORTANT: this will perform a test run of your command and not actually execute anything. this is paramount in testing your scripts

# ici, le deuxieme argument du script sera le nom du dossier de destination ou nos fichiers and dossiers a partir de la source seront copies
if [ ! -d $2 ]
then
	mkdir $2 --parents; # mkdir -p $2 (for Mac)
fi

rsync_options="--archive --verbose --backup --backup-dir=$2/$current_date --delete"; # le meme code que celui dessus sans l'option de tester (--dry-run). les options ont ete aussi eloignees
# --archive (-a) = archive mode
# --verbose (-v) = verbose
# --backup (-b) = does not replace files in the target file if file already exists in target
# --backup-dir = directory location for the backup. this flag is used in conjunction with the --backup (-b) flag
# --delete = makes sure target directory is a clone of the source directory. use with caution. deleting a folder in the source directory and re-running rsync will delete in the target directory
# but with -b and --backup-dir options, nothing will actually be deleted. they will instead be moved to the backup directory
# --dry-run: IMPORTANT: this will perform a test run of your command and not actually execute anything. this is paramount in testing your scripts

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log;
# Attention:
# ce code-ci:
# ./backup.sh text-files backup
# ne fonctionne pas pareillement que celui-ci:
# ./backup.sh text-files/ backup/
# le premier code va copier le dossier "text-files" et tout ses contenants dans notre dossier backup
# alors que le deuxieme va copier seulement le contentants du dossier "text-files". Le dossier lui-meme ne sera pas transfere
