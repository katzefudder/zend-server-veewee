## zend server
echo "deb http://repos.zend.com/zend-server/6.3/deb_apache2.4 server non-free" >> /etc/apt/sources.list
wget http://repos.zend.com/zend.key -O- |apt-key add -
aptitude update
aptitude install zend-server-php-5.4 -y
/usr/local/zend/bin/zs-manage bootstrap-single-server -p admin -a true -r false