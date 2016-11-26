#!/bin/sh
sudo ip link set eth0 up
sudo ip addr add 192.168.0.2/24 broadcast 192.168.0.255 dev eth0
#sudo ip addr add 192.168.2.8/24 broadcast 192.168.2.255 dev eth0
sudo ip route add default via 192.168.0.1
