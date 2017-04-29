#!/bin/bash

#Start up
echo "--=[iPwntU Auto Post-Install Script]=--";
sleep 1;

#Check if userid=0 and kill if not
if [ `whoami` != 'root' ]; then
echo "--=[IDIOT - RUN SCRIPT AS ROOT]=--";
exit; 
else

#clean and update
echo "--=[Apt clean & update]=--";
apt-get clean && apt-get update
sleep 3;

#install curl, tor, gpa, wine, bleachbit, macchanger
echo "--=[install curl, tor, wine, gpa, bleachbit, macchanger]=--";
apt-get install curl tor gpa bleachbit wine macchanger
sleep 3;

#add wine32 arch
echo "--=[add wine32 arch]=--";
dpkg --add-architecture i386 && apt-get update && apt-get install wine32
sleep 3;

#install google chrome
echo "--=[install google chrome]=--";
apt-get install google-chrome-stable
sleep 3;

#install tor-browser
echo "--=[install tor browser]=--";
curl -o /opt/tor-browser-linux64-7.0a3_en-US.tar.xz https://www.torproject.org/dist/torbrowser/7.0a3/tor-browser-linux64-7.0a3_en-US.tar.xz
sleep 3;
tar xvJf /opt/tor-browser-linux64-7.0a3_en-US.tar.xz
sleep 1;

#change no run as root in tor browser
echo "--=[enable tor-browser run as root]=--";
rm -rf  /opt/tor-browser_en-US/Browser/start-tor-browser
curl -o /opt/tor-browser_en-US/Browser/start-tor-browser https://raw.githubusercontent.com/Hitemz/scripts/master/start-tor-browser
sleep 5;

#get pgp keys
echo "--=[get pgp keys and import]=--";
mkdir /root/.gnupg/keys
sleep 1;
curl -o /root/.gnupg/keys/pgp.dat https://raw.githubusercontent.com/Hitemz/scripts/master/pgp.dat
sleep 1;
gpg --import /root/.gnupg/keys/pgp.dat

#install vip72 client
echo "--=[install socks vip72 client]=--";
mkdir /root/vip72
sleep 1;
curl -o /root/vip72/vip72.zip https://raw.githubusercontent.com/Hitemz/scripts/master/vip72socks.zip
sleep 2;
unzip /root/vip72/vip72.zip

#get wallpaper
echo "--=[set wallpaper]=--";
curl -o /root/Pictures/wallpaper.png https://raw.githubusercontent.com/Hitemz/scripts/master/wallpaper.png

#add user ipwntu
echo "--=[adduser ipwntu]=--";
useradd -l -m -r -s /bin/bash -u 1337 -U ipwntu

#setup done
echo "--=[Setup Install Done]=--";
echo "* vip72 info: hitemz:67f6be255c45d73cbfac397f03a2928f";
sleep 3;
sleep 10;
fi
