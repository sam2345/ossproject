#!/bin/bash

while read line           
do       
	user_name=$line  
	group_name="<enter the >"
    	#user_name=`echo $line | cut -d' ' -f1`
	#group_name=`echo $line | cut -d' ' -f2`
	if [ ! -z "$line" ]
	then
		DIRECTORY="/userdata/"$group_name"/"$user_name
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

	fi
done <Enter the username
