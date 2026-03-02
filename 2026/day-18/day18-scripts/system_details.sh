#!/bin/bash


<<comment

system details script
memeory
Ram
disk
create functions for each

comment

check_memory(){

	echo "Check memory:"
	echo " $(free -h | awk 'NR==2 {print $7}')" 
}

check_storage(){

	echo "Check Storage:"
	echo "$(df -h | awk 'NR==2 {print $4}')"
}
process_cpu_consume(){

	echo "top process that high cpu consume"
	echo "$(ps aux --sort=-%mem | awk 'NR==2 {print $1,$2,$4}')"

}
main(){
	echo "============SYSTEM DETAILS======="
	check_memory
	check_storage
	process_cpu_consume

}
main
