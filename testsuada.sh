#!/bin/bash

if cat /etc/passwd | grep sysop
then
	echo "User is on the system"
	cat /etc/passwd | grep sysop
	cat /etc/group | grep sysop
else 
	echo "User is not in the system"
	useradd -m sysop 
	echo "user added"
	cat /etc/passwd | grep sysop
       	cat /etc/group | grep sysop
fi       	

