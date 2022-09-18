#!/bin/bash
#add fix to exercise1 here
sudo iptables -I INPUT 1 -p tcp --dport 80 -j ACCEPT
vagrant reload