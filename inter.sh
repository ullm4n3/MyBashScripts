#!/bin/bash

a=1
b=1

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
    echo "Trapped CTRL-C "$a"x"
	((a++))
}

while((1)); do
	echo "b : "$b
	sleep 1
	((b++))
done
