#!/bin/sh

if [ ! -f /var/www/html/wp-config.php ]; then
    wp core download --path=/var/www/html --allow-root
fi

cd /var/www/html

wp config create --dbname="$WORDPRESS_DB_NAME" --dbuser="$WORDPRESS_DB_USER" --dbpass="$WORDPRESS_DB_PASSWORD" --dbhost="$WORDPRESS_DB_HOST" --allow-root

wp core install --url="$WORDPRESS_URL" --title="$WORDPRESS_TITLE" --admin_user="$WORDPRESS_ADMIN_NAME" --admin_password="$WORDPRESS_ADMIN_PASSWORD" --admin_email="$WORDPRESS_ADMIN_EMAIL" --allow-root

wp user create "$WORDPRESS_USER_NAME" "$WORDPRESS_USER_EMAIL" --role="$WORDPRESS_USER_ROLE" --user_pass="$WORDPRESS_USER_PASSWORD" --allow-root

exec "$@"
