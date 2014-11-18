read user_name
DIRECTORY="/userdata/"$user_name	
if [ ! -d "$DIRECTORY" ]; then
mkdir -p $DIRECTORY
fi	
useradd $user_name
echo $user_name | passwd --stdin $user_name
chown -R $user_name $DIRECTORY
gpasswd -a $user_name $group_name
chgrp -R $group_name $DIRECTORY
usermod -d $DIRECTORY $user_name
chsh -s /bin/csh $user_name
