#!/bin/bash

echo "Enter the filename:"
read fn
if [ ! -f "$fn" ]
then
	echo "Invalid Filename!"
	exit
fi

for line in `cat $fn`
do
	length=$(echo $line|wc -c)
	length=$(($length-1))
	s=1;e=40
	if [ $length -gt 40 ]
	then
		while [ $length -gt 40 ]
		do
			echo -e "$(echo $line| cut -c $s-$e) /"
			s=$(($e+1))
			e=$(($e+40))
			length=$(($length-40))
		done
		echo "$(echo $line | cut -c $s- )"
	else
		echo $line
	fi
done
echo "File Folded!"



