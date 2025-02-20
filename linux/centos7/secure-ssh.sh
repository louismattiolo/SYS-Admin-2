#secure-ssh.sh
#author louis
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes root ability to ssh in
echo -n "Enter user: "
read user
useradd -m -d /home/$user -s /bin/bash $user
mkdir /home/$user/.ssh
cp /home/louis/SYS265/docker01/SYS-Admin-2/linux/centos7/id_rsa.pub /home/$user/.ssh/authorized_keys
chmod 700 /home/$user/.ssh
chmod 600 /home/$user/.ssh/authorized_keys
chown -R $user:$user /home/$user/.ssh
