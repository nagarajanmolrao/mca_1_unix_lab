#!/bin/bash
#if [ $# -eq 0 ]
#then
#	echo “No arguments”
#	exit
#else
#	list=`ls -f $1`
#	for x in $list
#	do
#	    cp -v $x mydir/
#	done
#fi

list=`ls -f $1`
for x in $list
do
	echo $x
done
