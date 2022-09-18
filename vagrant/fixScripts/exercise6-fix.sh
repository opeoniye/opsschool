#!/bin/bash
#add fix to exercise6-fix here

# get current server name
host=$(cat /etc/hostname)

case $host in

# case1: copy files from server1 to server2
    server1)
        scp -i ~/.ssh/private_key $1 $2 vagrant@server2:$3
        a=$(wc -c "$1" | awk '{print $1}')
        b=$(wc -c "$2" | awk '{print $1}')
        size=$((a+b))
        echo $size
        ;;

# case2: copy files from server2 to server1
    server2)
        scp -i ~/.ssh/private_key $1 $2 vagrant@server1:$3
        a=$(wc -c "$1" | awk '{print $1}')
        b=$(wc -c "$2" | awk '{print $1}')
        size=$((a+b))
        echo $size
        ;;

esac