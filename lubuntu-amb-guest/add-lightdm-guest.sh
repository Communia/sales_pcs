#!/bin/bash
set -x
echo -e "[Seat:*]\nallow-guest=true\nautologin-guest=true\nautologin-user-timeout=0" > /etc/lightdm/lightdm.conf.d/50-convidats.conf
#Afegim alguna configuració de l'usuari via skel, es podria tirar comandes via /etc/guest-session/prefs.sh, per autostarts: /etc/guest-session/auto.sh
#mkdir /etc/guest-session
#cp -pr /etc/skel /etc/guest-session/skel
#echo -e "Custom settings for every guest" > /etc/guest-session/skel/.config/customize settings

