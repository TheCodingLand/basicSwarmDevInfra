sudo apt-get install nfs-kernel-server -y
sudo apt-get install nfs-common -y

###ONLY on NFS Node

sudo mkdir /data
sudo chown $USER /data
sudo chmod 777 /data
echo '/data          (rw,no_root_squash,no_subtree_check)'| sudo tee --append /etc/exports > /dev/null
sudo service nfs-server restart