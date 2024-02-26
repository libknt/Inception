#!/bin/bash

ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD:-password}

mysql -u root -p"$ROOT_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS dev;"
mysql -u root -p"$ROOT_PASSWORD" -e "CREATE USER IF NOT EXISTS 'dev'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -p"$ROOT_PASSWORD" -e "GRANT ALL PRIVILEGES ON dev.* TO 'dev'@'localhost';"
mysql -u root -p"$ROOT_PASSWORD" -e "FLUSH PRIVILEGES;"
