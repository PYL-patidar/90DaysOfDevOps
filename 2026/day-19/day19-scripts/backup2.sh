#!/bin/bash

set -euo pipefail
<<comment

this a script for take backup  of log files

comment

source_dir=$1
backups=$2
timestamp=$(date "+%Y-%m-%d-%H-%M-%S")


if [ ! -d "${source_dir}" ]; then

	echo "Source path does not exist "
	exit 1
fi
#check_argument(){
#
#	echo "Usage: ./backup2.sh <path to source>  <path to destination>"
#}
#
#if [ $# -eq 0 ]; then
 #      check_argument
#fi 

create_backup(){

	echo "------ Creating Backup of compressed files-------"

	sudo tar -czf "$backups/backup-$timestamp.tar.gz" "$source_dir"
	
	echo "Backup created: $backups/backup-$timestamp.tar.gz"

	if [ $? -eq 0 ]; then
		echo "Backup Completed Successfully!!!"
	fi

}


backup_rotation(){

	echo "-----Removing 14 days ago backup files-------"
	find $backups -type f -name "*.tar.gz" -mtime +14 -delete

	if [ $? -eq 0 ]; then
		echo "cleanup Successfull!!!"
	fi
}

#create_backup
#backup_rotation
