#!/bin/bash
#a=`cat /home/prateek.saxena/ip`
for i in 172.23.15.13
do
sshpass -p "Dubey@123" ssh -tt -o StrictHostKeyChecking=no abhishek.kumar5@$i <<EOF
sudo sudo -i
sed -i '/^AllowGroups/s/securityadmin.w/ /gi;/^AllowGroups/s/$/ securityadmin.w/gi' /etc/ssh/sshd_config
chattr -i /etc/sudoers
sed -i -e  '$a\%securityadmin.w       ALL=(ALL)       NOPASSWD: ALL' /etc/sudoers
service sshd restart
exit 
exit 
exit 
EOF
done
