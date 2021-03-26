#!/bin/bash
if [ $# -eq 0 ]
then
	echo “No arguments”
	exit
fi
for i in $*
do
	echo grep –riew $* ~/
	ls $*
	cat $* 
       	cp $* ~/mydir
done
