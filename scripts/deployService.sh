#!/bin/bash
echo ">>>> STARTING" $0 "on" $HOSTNAME ">>>>"

echo  $0 "on" $HOSTNAME" : git pulling"
cd /home/artificiel/pdFuego && git pull


for SERVICE in pdFuego dimmerEthernet
do

	if [ -e "/etc/systemd/system/$SERVICE.service" ]; 
	then
        	echo $0 "on" $HOSTNAME" : $SERVICE.service founded, removing it"
		sudo systemctl stop $SERVICE.service
		sudo systemctl disable $SERVICE.service
	fi


	echo  $0 "on" $HOSTNAME ": linking" $SERVICE
	sudo ln -s /home/artificiel/pdFuego/services/$SERVICE.service /etc/systemd/system/$SERVICE.service

	echo  $0 "on" $HOSTNAME ": printing permission of pdfuego.service"
	ls -l /etc/systemd/system/$SERVICE.service


	echo  $0 "on" $HOSTNAME " reloading daemon"
	sudo systemctl daemon-reload
	
	echo  $0 "on" $HOSTNAME " enabling" $SERVICE
	sudo systemctl enable $SERVICE
	
	echo  $0 "on" $HOSTNAME " starting" $SERVICE
	sudo systemctl start $SERVICE
	
	echo  $0 "on" $HOSTNAME " status " $SERVICE
	sudo systemctl status $SERVICE


done

echo ">>>> FINISH" $0 "on" $HOSTNAME ">>>>"
