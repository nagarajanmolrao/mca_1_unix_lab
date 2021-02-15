#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Run this script with only one username as arguement!"
else
	if [ $(grep $1 /etc/passwd) ]
	then
		eval "echo ~$1"
	else
		echo "user does not exsist"
	fi
fi
