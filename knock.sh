#!/bin/bash

echo 'usage : ./knocker.sh HOST PORT/PORT RANGE'

HOST=$1
shift
for ARG in "$@"
do
	sudo nmap -e vboxnet0 -Pn -n --host_timeout 5 --verbose --max-retries 0 -p $ARG $HOST
done
