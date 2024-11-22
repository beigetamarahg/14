#!/bin/sh
sed "s/\$PORT/$PORT/g" /usr/local/apache2/conf/ports.conf.template >/usr/local/apache2/conf/ports.conf
# sed "s/\$PORT/$PORT/g" /usr/local/apache2/sites-avaliable/red.conf.template >/usr/local/apache2/sites-enabled/red.conf
sed "s/\$PORT/$PORT/g" /usr/local/apache2/sites-avaliable/blue.conf.template >/usr/local/apache2/sites-enabled/blue.conf
exec apachectl -D FOREGROUND
