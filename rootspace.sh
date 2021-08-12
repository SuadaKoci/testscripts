#!/bin/bash

command=$(df -h | grep "/$" | awk {'print $5'})

if [[ $command == "30%" ]]
then
	echo "Hapsira: $command"
	$command >> /tmp/logfile.log
else 
	echo "Hapsira eshte : $command"
	
fi
