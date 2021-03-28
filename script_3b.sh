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
		stty intr ''
		stty eof ''
		stty susp ''
		stty stop ''
		stty kill ''
		echo "To unlock, Enter Password: "
		passFirst=""
		until [ "$passFirst" = "$passConfirm" ]
		do
			read -s passFirst
		done
		stty intr '^C'
		stty eof '^D'
		stty susp '^Z'
		stty stop '^S'
		stty kill '^U'
		echo -e "\033[32mTerminal Unlocked !\033[0m"
		exit
	else
		echo "Password Mismatch !"
		sleep 3
	fi
done	
