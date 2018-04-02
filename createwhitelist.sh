sudo macchanger --show wlan0 | awk '/Current/ {print $3}' > whitelist.txt
