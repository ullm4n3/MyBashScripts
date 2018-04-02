#!/usr/bin/env python

'''

simple python port knocker 
using scapy module
by 7h3N00b

'''

try:
	from scapy.all import *
except:
	install_scapy()

def install_scapy():
	print 'need to install scapy !!!'
	input = raw_input('install scapy [Y/n] ? ')

	if input == 'n':
		exit(-1)

#	import platform
#	from os import system
#
#	if platform.dist()[0] == 'fedora'	
#		system('pip install scapy')
#	if platform.dist()[0] == 'Kali' || platform.dist() == 'Debian':
	
	system('pip install scapy')

def usage(): 

	print '''
	host = argv[1] # destination ip address / host ip
	dport = list(argv[2]) # using ',' to separate port list
	conf.iface = argv[3] # default wlan0
	'''

def main():

	if len(sys.argv) < 2:
		usage()
		exit(-1)

	host = sys.argv[1] # destination ip address / host ip
	destport = list(sys.argv[2]) # using ',' to separate port list
	conf.iface = sys.argv[3] # default wlan0
	
	IP.dst = host
	TCP.dport = destport

	print 'knocking with using',conf.iface
	# the knocker
	# example syn packet send(IP(dst="192.168.56.2")/TCP(dport=[1234,4321]))
	send(IP(dst=host)/TCP(dport=destport))

if __name__ == '__main__':
	main()	