FROM debian:bullseye

RUN apt-get update && apt-get install -y wget

RUN apt-get update && apt-get install -y php7.4-fpm php7.4-mysql php7.4-gd php7.4-mbstring php7.4-xml php7.4-curl php7.4-mysqli php7.4-zip

WORKDIR /var/www/html

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

