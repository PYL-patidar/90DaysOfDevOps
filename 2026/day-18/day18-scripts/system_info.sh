#!/bin/bash
set -euo pipefail

<<comment
system info script 
hostname
uptime
disk usage
memory usage
cpu consumeing process

comment

hostname(){

	echo "Hostname: $(uname)"
	echo "HostIP: $(uname -n)"
	echo "Kernel Version: $(uname -r)"
	echo "OS info:"
        echo "$(lsb_release -a)"
}

uptime_fun(){

	echo "System Uptime : $(uptime)"
}

disk_usage(){

	echo "Disk Usage:"
        echo "$(df -h | head -n 5 )"

}
memory_usage(){

	echo "Memory usage:"
	echo "$(free -h)"
}

cpu_consuming_process(){

	echo "CPU Consuming Processes"
	echo "$(ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -n 6)"
}

main(){

	echo "------- SYSTEM INFORMATION -----"
	hostname
	uptime_fun
	disk_usage
	memory_usage
	cpu_consuming_process

}

main
