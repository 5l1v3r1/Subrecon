#!/bin/sh

# grab target and wordlist file
domain=$1
wordlist=$2
dot='.'

# read each line from file and check if subdomain exists
while read line
do
	host $line$dot$domain | grep 'not found' &> /dev/null
	if [ $? != 0 ]
	then
		echo $line$dot$domain
	fi
done < $wordlist