sudo apt-get update && sudo apt-get --force-yes upgrade

while(($?!=0)); do
	echo "TRYING UPDATE AGAIN WITH FIX MISSING !!!"
	sudo apt-get --fix-missing --force-yes update && sudo apt-get --force-yes upgrade
done

echo ">>>> SUCCESS <<<<<"
