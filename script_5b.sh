#!/bin/bash

echo -e "Current Date: $(date +"%d/%m/%Y")\n"
currDate=$(date +"%d")
if [ $currDate -le 9 ]
then
	currDate=$(echo $currDate | sed 's/'0'/''/')
	echo "$(cal | sed '3,4 s/'"$currDate"'/'*'/1')"
else
	echo "$(cal | sed '4,6 s/'"$currDate"'/'**'/1')"
fi

