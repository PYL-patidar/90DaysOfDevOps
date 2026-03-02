#!/bin/bash


<<comment

write two function check_disk and check_memory

comment

check_disk (){

	echo "Current disk status: "
	df -h | tee 
}

check_memory(){

	echo "Current memory status"
	free -h | tee
}

check_disk

check_memory

