#!/bin/bash

set -u

<<comment

a function that use local variable 

comment


read -p "Enter your name" name


demo_local_fun(){

	local name="nandini"
	echo "My local name is $name"
}


demo_local_fun

echo "My regular and global variable is $name"
