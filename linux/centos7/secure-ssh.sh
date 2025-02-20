#secure-ssh.sh
#author louis
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes root ability to ssh in
echo "ALL YOUR CODE GOES HERE"
sudo useradd -m -d /home/$1 -s /bin/bash $1
sudo mkdir /home/$1/.ssh
sudo cp /home/louis/SYS-ADMIN-2/linux/centos7/id_rsa.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$1/.ssh
