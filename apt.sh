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
apt-get -y install libsqlite3-dev

echo postfix postfix/main_mailer_type select Internet Site | debconf-set-selections
echo postfix postfix/mailname string localhost | debconf-set-selections
echo postfix postfix/destinations string localhost.localdomain, localhost | debconf-set-selections
apt-get -y install postfix

apt-get -y install graphicsmagick
apt-get -y install graphicsmagick-imagemagick-compat
apt-get -y install ghostscript
echo mysql-server mysql-server/root_password select admin | debconf-set-selections
echo mysql-server mysql-server/root_password_again select admin | debconf-set-selections
apt-get -y install mysql-server