#!/bin/bash

echo -e "Current Date: $(date +"%d/%m/%Y")\n"
currDate=$(date +"%d")
#currDate=21
if [ $currDate -le 9 ]
then
	currDate=$(echo $currDate | sed 's/'0'/''/')
	echo "$(ncal | sed 's/\b'"$currDate"'\b/'*'/1')"
else
	echo "$(ncal | sed 's/\b'"$currDate"'\b/'**'/1')"
fi

