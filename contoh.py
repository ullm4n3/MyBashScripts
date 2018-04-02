#!/usr/bin/python2.7

from scapy.all import *
import sys

def sniffer(proto):
	if (proto == 'dns'):
		sniff(prn=lambda x : x[DNS].summary())
	elif(proto == 'arp'):
		sniff(prn=lambda x : x[ARP].summary())
	elif(proto == 'icmp'):
		sniff(prn=lambda x : x[ICMP].summary())
	elif(proto == 'udp'):
		sniff(prn=lambda x : x[UDP].summary())
	elif(proto == 'tcp'):
		sniff(prn=lambda x : x[TCP].summary())
	else:
		print 'require protocol'; 

def usage():
	print '''./sniffer.py [proto]

proto list : 

1. dns
2. arp
3. icmp
4. udp
5. tcp
	'''

def main():
	
	if len(sys.argv) < 2:
		usage()
		exit(-1)

	while True:
		sniffer(sys.argv[1])

if __name__ == '__main__':
	main()