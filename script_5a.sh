#!/bin/bash

if [[ ! -f "$1"  ||  $# -ne 1 ]]
then
	echo "This script only accepts one valid filename as arguement!"
else
	#statLAT=$(stat "$1" | awk '/Access/ && NR==5 {print $2,$3,$4}')
	statLAT=$(stat --format="%x" "$1")
	lat=$(date --date="$statLAT" +"%d/%m/%Y  %I:%M %p")
	echo "FileName: $1"
	echo "Last Access Time: $lat"
fi
