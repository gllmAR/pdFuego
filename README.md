# pdFuego
Synthese de feu et asservissement de lumière  

git clone 

sudo chmod +x start.sh 


sudo ln -s /home/artificiel/pdFuego/services/*  /etc/systemd/system/ 

# installation sur raspberry pi : 

* suivre à peu près ce tuto :
http://openframeworks.cc/setup/raspberrypi/raspberry-pi-getting-started-archlinux/

Si en ssh, changer le mot de passe du user en root via 

passwd [username] 
pacman -Syu

pacman -S sudo pd git  alsa-utils patch make cmake 
 pacman -Syu


sudo usermod -a -G audio artificiel
sudo usermod -a -G sudo artificiel
alsa-firmware alsa-lib alsa-pluginsalsa-utils alsaplayer 

zita-alsa-pcmi 


https://wiki.archlinux.org/index.php/Raspberry_Pi

/boot/config.txt

nano dtparam=audio=on

amixer cset numid=3 1

audio_pwm_mode=2

git clone https://github.com/gllmAR/pdFuego


generate wifi! 

https://learn.adafruit.com/setting-up-a-raspberry-pi-as-a-wifi-access-point/install-software
https://wiki.archlinux.org/index.php/Software_access_point

sudo pacman -S hostapd dhcp