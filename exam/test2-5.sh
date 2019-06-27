#!/bin/bash
i=1
groupadd class1
while [ $i -le 30 ]
do
if [ $i -le 9 ];
then USERNAME=stu0${i}
else        
USERNAME=stu${i}
fi
useradd $USERNAME
mkdir /home/$USERNAME
chown -R $USERNAME /home/$USERNAME
chgrp -R class1 /home/$USERNAME
i=$(($i+1))
done

