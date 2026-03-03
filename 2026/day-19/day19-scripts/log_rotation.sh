#!/bin/bash

<<comment

write a automation script for log rotation

comment

Usage(){

	echo "Usage : ./log_rotation <log_dir>"
}
if [ $# -eq 0 ]; then
	Usage
fi

log_dir=$1

compress_log(){

	echo "Compress the Log folder into a zip folder"
	gzip 
}
