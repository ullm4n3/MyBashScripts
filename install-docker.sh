sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg2 \
	software-properties-common

DEBIAN_VERSION="debian stretch/stable"
#curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -
curl -fsSL https://download.docker.com/linux/$DEBIAN_VERSION/gp g| sudo apt-key add -
#https://download.docker.com/linux/debian jessie/stable amd64 Packages

# verify fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce