# Ubuntu

if [ "$USER" != "root" ]
then
  echo "ERROR: must be run as root."
  exit 1
fi

create_user=devops
useradd $create_user
mkdir /home/$create_user
mkdir /home/$create_user/.ssh

cat ../keys/devops.pub >> /home/$create_user/.ssh/authorized_keys
chmod go-rwx /home/$create_user/.ssh
chmod go-rwx /home/$create_user/.ssh/authorized_keys
chown -R $create_user:$create_user /home/$create_user
