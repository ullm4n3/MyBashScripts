echo $@ #all param
echo $1 #param 1
echo $# #length


function func(){
	echo $1 #local function param
}

func satu
