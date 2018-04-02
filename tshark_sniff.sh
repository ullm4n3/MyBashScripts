#!/bin/bash

if [[ ! $1 ]]; then
	exit -1;
fi
sudo tshark -i wlan0 -nnn -W $1 -F pcapng
