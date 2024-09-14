#!/bin/bash

mkdir -p /run/mysqld
adduser mysql
chown -R mysql:mysql /run/mysqld

mariadbd &
PID=$!
sleep 5

sed -i 's/^bind-address\s*=\s*127\.0\.0\.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
if ! mysql -uroot -e ";" ; then
	mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
fi

mysql -uroot -phogehoge -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mysql -uroot -phogehoge -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -uroot -phogehoge -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"
mysql -uroot -phogehoge -e "FLUSH PRIVILEGES;"

kill $PID
wait $PID

exec "$@"