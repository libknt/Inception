#!/bin/bash

DB_USER=root
DB_PASS=$MYSQL_ROOT_PASSWORD

mysql -u$DB_USER -p$DB_PASS -e "SELECT * FROM wordpress.wp_posts;" > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "DB connection failed."
    exit 1
fi

DB_STATUS=$(mysqladmin -u$DB_USER -p$DB_PASS ping)

if [[ "$DB_STATUS" != "mysqld is alive" ]]; then
    echo "DB is not alive."
    exit 1
fi

echo "DB is healthy."
exit 0
