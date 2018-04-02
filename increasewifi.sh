#!/bin/bash

interface=$1
echo "hello, HaVoK!"
echo " taking down $interface"
sudo ifconfig $interface down
sleep 3

echo "setting Region to Bolivia"
sudo iw reg set BO
sleep 3

echo "setting TxPower to 30"
sudo iwconfig $interface txpower 30
sleep 2

echo "starting wlan0"
sudo ifconfig $interface up 
echo "pulling $interface interface up"
sudo iwconfig
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
