#!/bin/bash
echo "what is it that you want?"
echo "1: open edge"
echo "2: make file"
read do
oE="open edge"
mF="make file"

if [ "$do" = "$oE" ]; then
	bash ~/Bash/openEdge.sh
elif [ "$do" = "$mF" ]; then
	bash ~/Bash/makeFile.sh
else
	echo "something unexpected happened."
fi
