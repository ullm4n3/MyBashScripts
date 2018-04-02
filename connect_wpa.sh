IFACE="wlan0"
TMPCONFIG=`tempfile -m 644 -p wpa_sss -s .conf`

if [[ -z $1 ]]; then
	#connect open network
	echo "connect to open network"
	sudo wpa_supplicant -i $IFACE -c $TMPCONFIG -D wext 
else
	#connect to wpa/wpa2 psk network
	echo "connect to wpa/wpa2 network"
	wpa_passphrase $1 > $	TMPCONFIG && sudo wpa_supplicant -i $IFACE -c $TMPCONFIG -D wext
fi

#delete temporary configuration file at exit or kill by ctrl+c
trap "rm -f $TMPCONFIG" EXIT