#!/bin/bash

set -e
<<comment

writng a script for log analyzer 

comment



if [ $# -eq 0 ]; then
	echo "Usage: $0 <path/to/log/file>"
fi

if [ ! -d "$1" ]; then
	echo "Directory doesn't exist"
fi


error_count(){

	grep "ERROR" $1
	echo "Total number of error is : "
}

