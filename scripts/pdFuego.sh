#!/bin/sh
sudo /usr/bin/ip addr add 192.168.0.10/24 dev eth0
ip address | grep eth0
/bin/pd -nogui /home/artificiel/pdFuego/_main.pd
