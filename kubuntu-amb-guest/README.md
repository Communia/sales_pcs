# Kubuntu amb guest
Scripts per tal de posar a punt sales d'ordinadors bàsiques amb kubuntu i una sessió de convidat. Executar amb root o sudo.

Per instal·lar repos i paquets útils extres. Acabarà instal·lant lightdm i preguntant si volem fer-lo servir.
    # install-extra-packages.sh
Per agafar informació bàsica del pc i guardar-lo al fitxer inventari.txt en aquesta mateixa carpeta:
    # info-inventari.sh
Per afegir sessió de convidat i configurar kde perquè no salti la pantalla de bloqueig i perquè comenci una sessió en blanc:
    # add-lightdm-guest.sh

