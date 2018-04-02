#!/bin/bash

CMD='\!'
NMB=1

vboxcommands="\
VBoxManage startvm "windows 7" --type headless"

VBM="VBoxManage"

OSLIST=\
VBoxManage list vms | \
cut -d'"' -f2 | sed 's/^\
/"/;s/$/"/' | while read \
LINE; do echo $nmb". "$LINE; ((++NMB)); done\
sed -n '$LST'p

SLCTOS=\
VBoxManage list vms | \
cut -d'"' -f2 | sed 's/^\
/"/;s/$/"/' | while read \
LINE; do echo $nmb". "$LINE; ((++NMB)); done\
sed -n '$LST'p

vbcgcontrol=$VBM" guestcontrol "$osnum" list all"
vbcmodvm=$VBM" modifyvm" # nic | boot
vbcstartvm=$VBM" startvm "$osnum" --type" headless | gui
vbcshowinfo=$VBM" showvminfo "$osnum" --details" 
vbclist=$VBM" list" # vms | hostinfo | bridgeifs
vbcdebug=$VBM" debugvm "$osnum # osinfo | getregisters
vbcguestprop=$VBM" guestproperty "$osnum # enumerate | get
vbcnatlist=$VBM" natnetwork list"

vboxtools="\
VBoxBalloonCtrl  VBoxControl      VBoxManage\
VBoxClient       VBoxHeadless     VBoxSDL"

while echo -n "> "; read record[n]; do
	echo -e $num". your input is : "$record"\n"
	((num++))

	case $record in
		CMD"exit")
			echo "exit program !"; exit -1
			;;
		CMD"ipaddr")
			echo "ip address is :"; sudo ifconfig
			;;
		CMD"directory")
			echo "dir in . is :"; ls -l
			;;
		CMD"commands")
			echo "list of commands is :"
			echo "commands, exit, ipaddr, directory, exit"
			;;
		"startheadless")
			echo "exit program !"; exit -1
			;;
		"controlvm")
			echo "exit program !"; exit -1
			;;
		"dbginfo")
			echo "exit program !"; exit -1
			;;
		"startvm")
			echo "exit program !"; exit -1
			;;
		"exit")
			echo "exit program !"; exit -1
			;;
		"exit")
			echo "exit program !"; exit -1
			;;
		"exit")
			echo "exit program !"; exit -1
			;;

		*)
			echo "error command !"
			;;
	esac

done


1. VBoxManage controlvm <vmname | uuid> <savestate | pause | shutdown | poweroff | etc>
2. VBoxManage list vms 
3. VBoxManage showvminfo "windows 7" --details 
4. VBoxManage debugvm "windows 7" osinfo
5. VBoxManage debugvm "windows 7" getregisters
6. VBoxManage startvm "windows 7" --type headless > without gui
7. VBoxManage startvm "windows 7" --type gui > gui
8. VBoxmanage createvm --name <name> --group <group> --ostype <ostype> [--register] --basefolder <folder/path> --uuid <uuid no>
9. VBoxManage modifyvm : for modification like ram, hdd, os type etc
10. VBoxManage natnetwork list | stop | remove | add
11. VBoxMange list hostinfo | runningvms | vms | intnets
12. VBoxManage guestcontrol "windows 7" list all | session | process | file
13. VBoxManage hostonlyif ipconfig --dhcp --ip --netmask  <create | remove>
14. VBoxManage guestcontrol "windows 7" watch
15 VBoxManage modifyvm windows\ 7 nic1 nat : nat network
15 VBoxManage modifyvm windows\ 7 boot1 disk : booting from disk boot<1-N> disk | dvd | etc
16 VBoxManage list bridgedifs
17. VBoxManage guestproperty enumerate windows\ 7 : list property pada guest os