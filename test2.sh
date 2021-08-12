#!/bin/bash

test=$(cat /var/log/kern.log | grep "error")

if [[ $test == "error" ]]
then 
	echo "Error gjendet ne:$test" 
else
	echo "Error nuk gjendet"
fi	

