sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get remove docker docker-engine docker.io
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg [download.docker.com] | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname [github.com] -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo apt-get install nfs-kernel-server -y
sudo apt-get install nfs-common -y

###ONLY on NFS Node

#sudo mkdir /data
#sudo chown $USER /data
#sudo chmod 777 /data
#echo '/data          (rw,no_root_squash,anonuid=1026,anongid=100,sync,no_subtree_check,no_acl)' | sudo tee --append /etc/exports > /dev/null
#sudo service nfs-server restart


