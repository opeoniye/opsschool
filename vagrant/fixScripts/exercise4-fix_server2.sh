#!/bin/bash
#add fix to exercise4-server2 here
sudo su 
echo "192.168.60.10 server1" >> /etc/hosts
su vagrant
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd
ssh server1