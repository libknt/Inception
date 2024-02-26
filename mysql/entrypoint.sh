#!/bin/bash

service mariadb start

/usr/local/bin/init_db.sh

# service mariadb stop

exec mysqld_safe --foreground
