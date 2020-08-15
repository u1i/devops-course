# Ubuntu

create_user=devops2
useradd $create_user
mkdir /home/$create_user
mkdir /home/$create_user/.ssh

chown -R $create_user:$create_user /home/create_user
cat ../keys/devops.pub >> authorized_keys
chmod go-rwx /home/$create_user/.ssh
chmod go-rwx /home/$create_user/.ssh/authorized_keys
