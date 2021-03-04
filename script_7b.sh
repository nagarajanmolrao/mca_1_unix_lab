#!/bin/bash

if [ $# -ne 2 ]
then
	echo "This script takes in two filenames as arguements"
	exit
else
	string1=`cat $1 | tr '\n' ' '`
	for a in $string1
	do
		echo "$a: `grep -c "$a" "$2"`"
	done
fi

