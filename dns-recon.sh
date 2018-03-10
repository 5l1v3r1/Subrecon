#!/bin/sh

# grab target and wordlist file
domain=$1
wordlist=$2
dot='.'

if [ $# != 2 ]
then
	echo 'usage: ./dns-recon.sh [ target_url ] [ wordlist_textfile ]'
	exit
fi

# read each line from file and check if subdomain exists
while read line
do
	host $line$dot$domain | grep 'not found' &> /dev/null
	if [ $? != 0 ]
	then
		echo $line$dot$domain
	fi
done < $wordlist

echo '-- END OF WORDLIST CHECK --'
