#!/bin/bash

service mariadb start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS dev;"
mysql -u root -e "CREATE USER IF NOT EXISTS 'dev'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -e "GRANT ALL PRIVILEGES ON dev.* TO 'dev'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"
