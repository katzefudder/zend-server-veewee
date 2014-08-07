#!/bin/sh
groupadd -r admin
usermod -a -G admin vagrant
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers

a2enmod rewrite
a2enmod deflate
a2enmod php5
a2enmod headers
a2enmod expires
a2enmod status
a2enmod negotiation
a2enmod setenvif