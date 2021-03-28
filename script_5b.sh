#!/bin/bash

echo -e "Current Date: $(date +"%d/%m/%Y")\n"
currDate=$(date +"%d")
#currDate=21
if [ $currDate -le 9 ]
then
	currDate=$(echo $currDate | cut -f 2)
	echo "$(ncal | sed 's/\b'"$currDate"'\b/'*'/')"
else
	echo "$(ncal | sed 's/\b'"$currDate"'\b/'**'/')"
fi

