
#This shell script will help you to automate install docker-compose 1.22 on ubuntu 18.04 and 

sudo apt-get update && apt-get upgrade -y
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get -y install docker-ce nfs-kernel-server nfs-common

sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker


sudo systemctl daemon-reload
sudo systemctl restart docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
