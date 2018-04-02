function oslist(){
	VBoxManage list vms | cut -d'"' -f 2
}

oslist
