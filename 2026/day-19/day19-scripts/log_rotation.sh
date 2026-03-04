#!/bin/bash
set -e
<<comment

write a automation script for log rotation

comment

backups=$1

if [ $# -eq 0 ]; then
	echo "Usage: $0 <log_directory_path>"
	exit 1
fi

if [ ! -d "$backups" ]; then
	echo "Error: Directory does not exists"
	exit 1
fi



compress_log(){

	
	echo "------Compressing the .log files older than 7 days-------"
         
	count=$(find "$backups" -type f -name "*.log" -mtime +7 | wc -l)

	sudo find "$backups" -type f -name "*.log" -mtime +7 -exec gzip {} \;
	
	if [ $? -eq 0 ]; then
		echo "File Compressed successfully!!!!"
	fi

	echo "Total compressed Files are : $count"
	
        #sudo gzip -c $backups 
	#sudo tar -czf Myapp_backups_$timestamp.tar.gz "${backups}"
	#echo "Backup file is : ${backups} "

}

log_rotation(){

	echo "-------Deletes .gz files older than 30 days--------"

	count=$(find "$backups" -type f -name "*.gz" -mtime +30 | wc -l)

	sudo find "$backups" -type f -name "*.gz" -mtime +30 -delete

	if [ $? -eq 0 ]; then
		echo " 30 days Older files Deleted Successfully!!!"
	fi

	echo "Total deleted files are : $count"
}


#compress_log
#log_rotation

