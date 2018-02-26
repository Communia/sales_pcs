#!/bin/bash
set -x
echo -e "[Seat:*]\nallow-guest=true\nautologin-guest=true\nautologin-user-timeout=0\nuser-session=plasma" > /etc/lightdm/lightdm.conf.d/50-convidats.conf
#Afegim alguna configuració de l'usuari via skel, es podria tirar comandes via /etc/guest-session/prefs.sh, per autostarts: /etc/guest-session/auto.sh
mkdir /etc/guest-session
cp -pr /etc/skel /etc/guest-session/skel
echo -e "[$Version]
update_info=kscreenlocker.upd:0.1-autolock

[Daemon]
Autolock=false
LockOnResume=false" > /etc/guest-session/skel/.config/kscreenlockerrc
echo -e "[General]
confirmLogout=true
excludeApps=
loginMode=default
offerShutdown=true
shutdownType=0
"> /etc/skel/.config/ksmserverrc
