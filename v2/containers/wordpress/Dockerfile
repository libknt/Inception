FROM debian:bullseye
RUN	apt update && apt update -y
RUN	apt install -y wget zip
RUN apt install -y php7.4-fpm php7.4-mysqli php7.4-gd php7.4-curl php7.4-xml php7.4-mbstring php7.4-zip
# RUN	wget https://wordpress.org/latest.zip && mkdir -p /var/www && unzip -d /var/www latest.zip && mv /var/www/wordpress/* /var/www
# https://dev.classmethod.jp/articles/wordpress-cli-install/
# RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN	mkdir -p /var/www/html \
	&& wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp
COPY ./tools/www.conf /docker/www.conf
COPY ./tools/docker-entrypoint.sh /usr/local/bin/
RUN	chmod 755 /usr/local/bin/docker-entrypoint.sh
RUN	mkdir -p /run/php 
RUN	groupadd wordpress && useradd -g wordpress wordpress

ENTRYPOINT	["docker-entrypoint.sh"]
CMD	["php-fpm7.4", "-F"]
