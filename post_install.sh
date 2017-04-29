#!/bin/bash

apt-get clean && apt-get update
Sleep(3);
apt-get install tor gpa bleachbit wine
Sleep(3)
dpkg --add-architecture i386 && apt-get update && apt-get install wine32
Sleep(3);
apt-get install google-chrome-stable
Sleep(3);
curl -o /opt/tor-browser-linux64-7.0a3_en-US.tar.xz https://www.torproject.org/dist/torbrowser/7.0a3/tor-browser-linux64-7.0a3_en-US.tar.xz
Sleep(3);
tar xvJf /opt/tor-browser-linux64-7.0a3_en-US.tar.xz
Sleep(1);
rm -rf  /opt/tor-browser_en-US/Browser/start-tor-browser
curl -o /opt/tor-browser_en-US/Browser/start-tor-browser 
