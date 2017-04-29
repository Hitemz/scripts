#!/bin/bash

#clean and update
apt-get clean && apt-get update
Sleep(3);

#install tor,gpa,wine,bleachbit
apt-get install tor gpa bleachbit wine
Sleep(3)

#add wine32 arch
dpkg --add-architecture i386 && apt-get update && apt-get install wine32
Sleep(3);

#install google chrome
apt-get install google-chrome-stable
Sleep(3);

#install tor-browser
curl -o /opt/tor-browser-linux64-7.0a3_en-US.tar.xz https://www.torproject.org/dist/torbrowser/7.0a3/tor-browser-linux64-7.0a3_en-US.tar.xz
Sleep(3);
tar xvJf /opt/tor-browser-linux64-7.0a3_en-US.tar.xz
Sleep(1);

#change no run as root in tor browser
rm -rf  /opt/tor-browser_en-US/Browser/start-tor-browser
curl -o /opt/tor-browser_en-US/Browser/start-tor-browser https://raw.githubusercontent.com/Hitemz/scripts/master/start-tor-browser
Sleep(5);

#get pgp keys
mkdir /root/.gnupg/keys
sleep(1);
curl -o /root/.gnupg/keys/pgp.dat https://raw.githubusercontent.com/Hitemz/scripts/master/pgp.dat
Sleep(1);
gpg --import /root/.gnupg/keys/pgp.dat

#get wallpaper
curl -o /root/Pictures/wallpaper.png https://github.com/Hitemz/scripts/raw/master/wallpaper.png

#add user ipwntu with default passwd g0tr00t
useradd -l -m -r -s /bin/bash -u 1337 -U ipwntu

