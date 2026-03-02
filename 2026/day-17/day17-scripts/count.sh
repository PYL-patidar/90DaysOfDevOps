#!/bin/bash

<<comment

printing numbers form 1 to 10 using for loop 

comment


echo "Number 1 to 5 : "

for (( num=1; num<=5; num++ ))
do
	echo "$num"
done


echo "Number 6 to 15 "

for i in {6..15}
do
	echo "$i"
done
