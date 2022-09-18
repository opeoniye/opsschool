#!/bin/bash
#add fix to exercise3 here
sed -i '32 s/^/#/' /etc/apache2/sites-enabled/000-default.conf
sed -i '33 s/^/#/' /etc/apache2/sites-enabled/000-default.conf
sed -i '34 s/^/#/' /etc/apache2/sites-enabled/000-default.conf
sudo systemctl restart apache2