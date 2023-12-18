#!/bin/bash
echo "vim may be used to edit the file."
echo "warning this is about to install vim if you do not want that to happen then DO NOT INPUT your passward."
echo "if you are runing a different package manager then apt then it will not install."
echo "if you want to skip this part then type yes."
read skip
if [ "$skip" = "yes" ]; then
	echo "understood."
elif [ "$skip" = "no" ]; then
	echo "after 10 seconds vim will ask for your password than install vim if you want to stop it press ctrl c or do not enter your password."
	sleep 10
	sudo apt install vim
else
	echo "something unexpected happend and as such will not install vim."
fi

echo "also where do you want to make the file and add name at the end of path."
read where
touch $where
vim $where
