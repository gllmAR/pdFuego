#!/bin/bash
echo ">>>> STARTING" $0 "on" $HOSTNAME ">>>>"

echo  $0 "on" $HOSTNAME" : git pulling"
cd /home/artificiel/pdFuego && git pull



if [ -e "/etc/systemd/system/pdFuego.service" ]; 
then
        echo $0 "on" $HOSTNAME" : pdFuego.service founded, removing it"
	sudo systemctl stop pdFuego.service
	sudo systemctl disable pdFuego.service
       	#sudo rm /etc/systemd/system/pdFuego.service
fi


echo  $0 "on" $HOSTNAME ": linking services"
sudo ln -s /home/artificiel/pdFuego/services/pdFuego.service /etc/systemd/system/pdFuego.service

echo  $0 "on" $HOSTNAME ": printing permission of pdfuego.service"
ls -l /etc/systemd/system/pdFuego.service


echo  $0 "on" $HOSTNAME " reloading daemon"
sudo systemctl daemon-reload
echo  $0 "on" $HOSTNAME " enabling service"
sudo systemctl enable pdFuego
echo  $0 "on" $HOSTNAME " starting service"
sudo systemctl start pdFuego
echo  $0 "on" $HOSTNAME " status service"
sudo systemctl status pdFuego


