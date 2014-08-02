#!/bin/sh
GEM=/opt/ruby/bin/gem

$GEM install mailcatcher
mailcatcher

echo "relayhost = 127.0.0.1:1025" >> /etc/postfix/main.cf