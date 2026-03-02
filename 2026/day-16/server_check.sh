#!/bin/bash

read -p "Enter service name : " srv_name

read -p "Do you want to check the status? (Y/N)" choice

if [ $choice == 'Y' ]; then 
	
	sudo systemctl status $srv_name

else 
	echo "Skipped"
fi
