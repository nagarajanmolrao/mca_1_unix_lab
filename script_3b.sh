#!/bin/bash

while true
do
	clear
	echo "**Password entered is not visible for security reasons**"
	echo "Enter Password: "
	read -s passFirst
	echo "Re-enter Password: "
	read -s passConfirm

	if [ "$passFirst" = "$passConfirm" ]
	then
		clear
		echo -e "\033[31mTerminal Locked !\033[0m"
		# Trapping CTRL+C
		trap '' 2
		# Setting number of CTRL+D presses required to consider EOF signal
		export IGNOREEOF=69
		echo "To unlock, Enter Password: "
		passFirst=""
		until [ "$passFirst" = "$passConfirm" ]
		do
			read -s passFirst
		done
		echo -e "\033[32mTerminal Unlocked !\033[0m"
		exit
	else
		echo "Password Mismatch !"
		sleep 3
	fi
done	
