#!/bin/bash


echo "--=[iPwntU Auto Post-Install Script]=--";
sleep(1);


#clean and update
echo "--=[Apt clean & update]=--";
apt-get clean && apt-get update
Sleep(3);

#install tor,gpa,wine,bleachbit
echo "--=[install tor, wine, gpa, bleachbit]=--";
apt-get install tor gpa bleachbit wine
Sleep(3)

#add wine32 arch
echo "--=[add wine32 arch]=--";
dpkg --add-architecture i386 && apt-get update && apt-get install wine32
Sleep(3);

#install google chrome
echo "--=[install google chrome]=--";
apt-get install google-chrome-stable
Sleep(3);

#install tor-browser
echo "--=[install tor browser]=--";
curl -o /opt/tor-browser-linux64-7.0a3_en-US.tar.xz https://www.torproject.org/dist/torbrowser/7.0a3/tor-browser-linux64-7.0a3_en-US.tar.xz
Sleep(3);
tar xvJf /opt/tor-browser-linux64-7.0a3_en-US.tar.xz
Sleep(1);

#change no run as root in tor browser
echo "--=[enable tor-browser run as root]=--";
rm -rf  /opt/tor-browser_en-US/Browser/start-tor-browser
curl -o /opt/tor-browser_en-US/Browser/start-tor-browser https://raw.githubusercontent.com/Hitemz/scripts/master/start-tor-browser
Sleep(5);

#get pgp keys
echo "--=[get pgp keys and import]=--";
mkdir /root/.gnupg/keys
sleep(1);
curl -o /root/.gnupg/keys/pgp.dat https://raw.githubusercontent.com/Hitemz/scripts/master/pgp.dat
Sleep(1);
gpg --import /root/.gnupg/keys/pgp.dat

#install vip72 client
echo "--=[install socks vip72 client]=--";
mkdir /root/vip72
Sleep(1);
curl -o /root/vip72/vip72.zip https://raw.githubusercontent.com/Hitemz/scripts/master/vip72socks.zip
Sleep(2);
unzip /root/vip72/vip72.zip

#get wallpaper
echo "--=[set wallpaper]=--";
curl -o /root/Pictures/wallpaper.png https://raw.githubusercontent.com/Hitemz/scripts/master/wallpaper.png

#add user ipwntu with default passwd g0tr00t
echo "--=[adduser ipwntu]=--";
useradd -l -m -r -s /bin/bash -u 1337 -U ipwntu

echo "--=[Setup Install Done]=--";
echo "* vip72 info: hitemz:g0tr00t3d:67f6be255c45d73cbfac397f03a2928f";
sleep(3);
echo "--=[Now LETS MAKE SOME FUCKIN COIN YEWW]=--";
Sleep(10);
