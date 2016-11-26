#!/bin/sh
echo "adding fix address"
sudo /usr/bin/ip addr add 192.168.0.10/24 dev eth0
echo "my address:"
ip address | grep eth0
echo "starting pd"
/bin/pd -nogui /home/artificiel/pdFuego/_main.pd
