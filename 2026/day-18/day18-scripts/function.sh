#!/bin/bash

<<comment

write function for greet with take name as argument 

comment

greet (){

	echo "Hello, $1"
}


add (){

	echo "Addition of $1 and $2 is : $(($1 + $2))"

}

greet "$1"
add "$2" "$3"





