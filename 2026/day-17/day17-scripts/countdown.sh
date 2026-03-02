#!/bin/bash

<<comment

countdown script 

comment

read -p "Enter a number for countdown :" num

echo "Count down start...."

while [ $num -ge 0 ]
do
	echo $num
	num=$((num-1))
done

echo "Done!"
