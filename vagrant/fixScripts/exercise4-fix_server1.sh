#!/bin/bash
#add fix to exercise4-server1 here
sudo su
echo "192.168.60.11 server2" >> /etc/hosts
su vagrant
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd
ssh server2