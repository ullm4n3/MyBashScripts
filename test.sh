#!/bin/sh

a=1

function ulang() {
	while(($a<20)); do
		echo "test"

	done
}

trap ulang EXIT

echo "exit with status "$?
