#!/bin/bash

<<comment

write a  script for take backup of last 5 to 10 days 

comment


display_usage(){
	
	echo "Usage: ./backup.sh <source path> <destination path> "
}

if [ $# -eq 0 ]; then
	display_usage
fi


source_dir=$1
backup_dir=$2
timestamp=$(date "+%Y-%m-%d-%H-%M-%S")

backup_create(){

	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" >> /dev/null
	
	if [ $? -eq 0 ]; then
		echo "backup generated succefully!!"
	fi
}


perform_rotation(){

	backups=($( ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))
	#echo "${backups[@]}"

	if [ "${#backups[@]}" -gt 5 ]; then
		echo "Performing rotation for 5 days"

		backups_to_remove=("${backups[@]:5}")
		#echo "${backups_to_remove[@]}"

		for backup in "${backups_to_remove[@]}"
		do
			rm -f ${backup}
		done

	
	fi 

}


backup_create
perform_rotation

