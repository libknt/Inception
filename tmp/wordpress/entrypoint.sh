#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ]; then
    wget https://wordpress.org/latest.tar.gz
    tar -zxvf latest.tar.gz
    mv wordpress/* ./
    rmdir wordpress
    rm -f latest.tar.gz

    mv wp-config-sample.php wp-config.php
    sed -i "s/database_name_here/dev/g" wp-config.php
    sed -i "s/username_here/dev/g" wp-config.php
    sed -i "s/password_here/password/g" wp-config.php
    sed -i "s/localhost/my-mysql/g" wp-config.php
fi

sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf

mkdir -p /run/php

php-fpm7.4 -F
