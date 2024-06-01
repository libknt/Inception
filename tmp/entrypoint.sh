#!/bin/bash

/usr/local/bin/init_db.sh

service nginx start
nginx -t
service php7.4-fpm start
service mariadb start


tail -f /dev/null

