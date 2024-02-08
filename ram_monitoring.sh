#!/bin/bash

##################################
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=500

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "WARNING, RAM is running low"
else
	echo "RAM Space is sufficient, it is $FREE_SPACE MB"
fi

####################################
PID for a particular process
echo "enter the user name for u want all the processes"
read username
ps -ef | grep "$username" | awk '{print $2}'
