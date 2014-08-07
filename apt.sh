#!/bin/sh
export DEBIAN_FRONTEND=noninteractive
apt-get -y update
apt-get -y upgrade
apt-get -y install linux-headers-$(uname -r) build-essential
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev
apt-get -y install vim
apt-get -y install dkms
apt-get -y install nfs-common
apt-get -y install debconf
apt-get -y install ssh
apt-get -y install openssh-client
apt-get -y install openssh-server
apt-get -y install curl
apt-get -y install man-db
apt-get -y install mcrypt
apt-get -y install htop
apt-get -y install graphicsmagick
apt-get -y install ghostscript
echo mysql-server mysql-server/root_password select admin | debconf-set-selections
echo mysql-server mysql-server/root_password_again select admin | debconf-set-selections
apt-get -y install mysql-server
apt-get -y install php5
apt-get -y install php5-mcrypt
apt-get -y install php5-apc
apt-get -y install php5-curl
apt-get -y install php5-gd
apt-get -y install php5-mysql
apt-get -y install php5-sqlite3
apt-get -y install apache2

## zend server
#echo "deb http://repos.zend.com/zend-server/6.1/deb server non-free" >> /etc/apt/sources.list
#wget http://repos.zend.com/zend.key -O- |apt-key add -
#aptitude update
#aptitude install zend-server-php-5.4 -y