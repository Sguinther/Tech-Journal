#secure-ssh.sh
#author sguinther
#creates a new ssh user using $1 param
#adds a public key from the local repo or curled from the remote repo
# removesability for rootssh

sudo useradd -m -d /home/$l -s /bin/bash $l
sudo mkdir /home/$l/.ssh
sudo cp /home/sam/Tech-journal/SYS265/linux/public-keys/id_rsa.pub /home/$l/.ssh/authorized_keys
sudo chmod 700 /home/$l/.ssh
sudo chmod 600 /home/$l/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$1/.ssh
