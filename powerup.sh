#!/bin/bash

wlan0="wlp3s0"

echo "hello, HaVoK!"
echo " taking down wlan0"
ifconfig $wlan0 down
sleep 3

echo "setting Region to Bolivia"
iw reg set BO
sleep 3

echo "setting TxPower to 30"
iwconfig $wlan0 txpower 30
sleep 2

echo "starting wlan0"
ifconfig $wlan0 up 
echo "pulling wlan0 interface up"
iwconfig
sleep 5


echo "                                   "
echo "                 BY                "
echo "       +-+-+ +-+-+-+-+-+ +-+-+     "
echo "               HaVoK               "
echo "       +-+-+ +-+-+-+-+-+ +-+-+     "
echo "                                   "
echo "                                   "

sleep 1

echo "good bye"

