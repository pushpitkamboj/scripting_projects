#!/bin/bash

echo "enter the user name for u want all the processes"
read username
ps -ef | grep "$username" | awk '{print $2}'
