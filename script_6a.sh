#!/bin/bash

lof=$(ls -l | grep "^-" | tr -s " " |sort -k 9 -t " " | cut -f 9 -d " ")
mkdir ~/patternMatch
for i in $lof
do
	if [ $(grep $1 $i) ]
	then
		printf "Filename: %s\n" $i
		cat $i
		cp -v $i ~/patternMatch/$i
	fi
done
