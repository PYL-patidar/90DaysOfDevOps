#!/bin/bash

read -p "Enter file name : " file

if [ -f $file ]; then 
	echo "file Exist"
else
	echo "file not Exist"

fi
