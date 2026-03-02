#!/bin/bash

<<comnt

package installing script

comnt

echo "Package instaling script!"

read -p "Define a list of packages: " -a pkg_list

for pkg in ${pkg_list[@]}
do

	echo "checking $pkg "

	if  dpkg -s $pkg > /dev/null 2>&1; then
		
		echo "$pkg already installed"
		echo "Current status of $pkg"
		sudo systemctl status $pkg

	else

		echo "Installing package...."
		sudo apt-get install $pkg
	fi
done

	       	
