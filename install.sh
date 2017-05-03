#!/bin/bash

#Start up
echo "--=[iPwntU Auto Post-Install Script]=--";
sleep 1;

#Check if userid=0 and kill if not
if [ `whoami` != 'root' ]; then
echo "--=[iPwntU - MAWHAHAHAHA]=--";
echo "[*] RANSOMWARE INITIATED - ALL YOUR FILES HAVE BEEN ENCRYPTED";
sleep 2;
echo "[*] Please send 0.3 bitcoins to 7RY2RY938YR2398389R3 to restore your files...";
sleep 2;
echo "[*] LOL... Jokes aside you need to run this script as root uid=0";
exit; 
else

#clean and update
echo "--=[Apt clean & update]=--";
apt-get clean && apt-get update
sleep 1;

#add wine32 arch
echo "--=[add wine32 arch]=--";
dpkg --add-architecture i386 && apt-get update && apt-get install -y wine32
sleep 2;

#install vip72 client
echo "--=[install socks vip72 client]=--";
mkdir ~/vip72 && curl -o ~/vip72/vip72.zip https://raw.githubusercontent.com/Hitemz/scripts/master/vip72socks.zip && unzip ~/vip72/vip72.zip
sleep 2;

#add user
echo "--=[adduser ipwntu]=--";
useradd -l -m -r -s /bin/bash -u 1337 -U ipwntu

#setup done
echo "--=[Setup Install Done]=--";
echo "[*] Download pgp keys";
echo "[*] passwd ipwntu!!!";
echo "[*] VIP72 HASH 67f6be255c45d73cbfac397f03a2928f";
sleep 10;
fi
