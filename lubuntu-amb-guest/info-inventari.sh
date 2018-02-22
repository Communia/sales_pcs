#!/bin/bash

echo "==========================START="`hostname`"==========================" >> inventari.txt
echo "-->hostname: `hostname`" >> inventari.txt
echo "-->lsb_release: " >> inventari.txt
lsb_release -a >> inventari.txt
echo "-->cpuinfo: "  >> inventari.txt
cat /proc/cpuinfo | grep -E 'processor|model\ name|cpu\ MHz|cache\ size|cpu\ cores' >> inventari.txt
echo "-->meminfo: " >> inventari.txt
cat /proc/meminfo | grep MemTotal >> inventari.txt
echo "-->mem slots: " >> inventari.txt
dmidecode -t 17 | grep -E 'Size:|Form\ Factor:|Type:|Speed:' >> inventari.txt
echo "-->mac: `ip address show |grep link/ether | awk  '{print $2}'`" >> inventari.txt
echo "=========================END=`hostname`==============================" >> inventari.txt
echo ""
echo ""
