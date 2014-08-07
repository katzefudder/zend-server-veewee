#!/bin/sh
echo "upload_max_filesize = 64" >> /etc/php5/apache2/php.ini
echo "max_execution_time = 240" >> /etc/php5/apache2/php.ini
echo "memory_limit = 512" >> /etc/php5/apache2/php.ini
echo "sendmail_path = /usr/bin/env catchmail -f some@from.address" >> /etc/php5/apache2/php.ini