#!/bin/bash
 echo "Hello World" 

 apt-get autoremove -y

 apt-get update -y

apt-get install -y python-software-properties python-software-properties aptitude git 

add-apt-repository ppa:brianmercer/testing -y
sudo add-apt-repository ppa:ondrej/php5 -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
gpg -a --export CD2EFD2A | apt-key add -
echo "deb http://repo.percona.com/apt precise main" >> /etc/apt/sources.list
echo "deb-src http://repo.percona.com/apt precise main" >> /etc/apt/sources.list
echo "Package: *" >> /etc/apt/preferences.d/00percona.pref
echo "Pin: release o=Percona Development Team" >> /etc/apt/preferences.d/00percona.pref
echo "Pin-Priority: 1001" >> /etc/apt/preferences.d/00percona.pref	
echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib " >> /etc/apt/sources.list

aptitude update
apt-get update