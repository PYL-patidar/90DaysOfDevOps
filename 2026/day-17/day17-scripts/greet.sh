#!/bin/bash

<<comment

command line argument example script

comment

#echo  "Method 1"
if [ $# -eq 0 ]; then
	
	echo "Usage: ./greet.sh <name>"
else	
	echo "Hello, $1"
fi


#echo "Method 2"

#if [ -z "$1" ]; then
#	
#	echo "Usage: ./greet.sh <name>"
#else
#	echo "Hello, $1"
#fi
