#!/bin/bash

nmb=1

while IFS='' read -r line || [[ -n "$line" ]]; do
	echo $nmb". Text read from file: $line"
	((++nmb))
done < "$1"
