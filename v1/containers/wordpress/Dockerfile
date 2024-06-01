FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y

RUN	apt-get install -y php-fpm wordpress wget zip gosu

RUN	wget https://wordpress.org/latest.zip && mkdir -p /var/www && unzip -d /var/www latest.zip

# https://make.wordpress.org/cli/handbook/guides/installing/
RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

