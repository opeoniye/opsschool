#!/bin/bash
#add fix to exercise5-server2 here
echo -e "Host *\n  StrictHostKeyChecking no" > ~/.ssh/config
chmod 400 ~/.ssh/config
sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo sed -i '39 s/^.//' /etc/ssh/sshd_config
sudo systemctl restart sshd
cp /vagrant/.vagrant/machines/server1/virtualbox/private_key ~/.ssh/private_key
ssh -i ~/.ssh/private_key server1