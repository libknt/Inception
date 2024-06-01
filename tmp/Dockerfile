FROM debian:bullseye

RUN apt-get update && apt-get install -y vim wget mariadb-server curl nginx php7.4-fpm

RUN apt-get install -y php7.4-mysql php7.4-gd php7.4-mbstring php7.4-xml php7.4-curl php7.4-mysqli php7.4-zip

WORKDIR /root/wordpress
RUN wget https://wordpress.org/latest.tar.gz && \
    tar -zxvf latest.tar.gz && \
    rm latest.tar.gz && \
    mv wordpress/* ./ && \
    rmdir wordpress && \
    rm -f latest.tar.gz

RUN mv wp-config-sample.php wp-config.php && \
    sed -i "s/database_name_here/dev/g" wp-config.php && \
    sed -i "s/username_here/dev/g" wp-config.php && \
    sed -i "s/password_here/password/g" wp-config.php

COPY default /etc/nginx/sites-enabled/default

RUN cp -r  /root/wordpress/* /var/www/html/

COPY init_db.sh /usr/local/bin/init_db.sh
RUN chmod +x /usr/local/bin/init_db.sh

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]