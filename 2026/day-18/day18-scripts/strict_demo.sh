#!/bin/bash

set -euo pipefail

<<comment

this is strict mode script
comment


echo "Example for undefined cariable...."
 read -p "Enter your name" name
echo "Hellp, $name"
echo $?


echo "example for command that fail and error occured"

mkdir /home/ubuntu/scripts
echo $?

echo "example for pipefail strict mode"

cat missing.txt | grep "error" | wc -l
echo "Script complete"


