#!/bin/bash
sudo apt update && sudo apt full-upgrade -y 
sudo apt install -y vlc inkscape gimp p7zip-full p7zip-rar rar unrar openjdk-8-jre lubuntu-restricted-extras openssh-server
#echo -e "[SeatDefaults]\nallow-guest=true\nautologin-guest=true\nautologin-user-timeout=5\nuser-session=plasma" >> /etc/lightdm/lightdm.conf.d/50-convidats.conf
