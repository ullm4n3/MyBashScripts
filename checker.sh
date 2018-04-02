#!/usr/bin/sh

#
# out.txt file get from this command
#
#
# sudo apt list --installed | grep python \
# | cut -d'/' -f1 | cut -d'-' -f2 | grep -v \
# -e python -e python3 -e python2.7 -e python3.6 \
# -e python3.4 -e python3.5 -e dev -e lib -e pyqt \
# -e all -e minimal -e backports -e doc -e apt | uniq -u
#
#

COMMAND="""
sudo apt list --installed | grep python \
| cut -d'/' -f1 | cut -d'-' -f2 | grep -v \
-e python -e python3 -e python2.7 -e python3.6 \
-e python3.4 -e python3.5 -e dev -e lib -e pyqt \
-e all -e minimal -e backports -e doc -e apt | uniq -u
"""

if [[ ! -e out.txt ]]; then # out.txt not find 
	echo 'ERROR : 23 \"if [[ ! -e out.txt ]]; then\"" # out.txt not find '
	echo -e 'out.txt file not exist !!!\n'
	echo -e 'please generate "out.txt" file with this command : \n'
	echo \"$COMMAND\"
	echo -e "\nstatus : ERROR "$?
	exit -1
fi

for VAR in `cat out.txt`; do
	
	echo "are you sure to install "$VAR"-doc";
	
	read CNFRM;

	if [[ $CNFRM -eq 'yes' ]]; then
		pip install $a-doc;
	else
		continue
	fi

done

if [[ $? -eq 0 ]]; then echo 'Success : '$?;
else echo 'Error : '$?; fi