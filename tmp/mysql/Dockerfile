FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

COPY ./my.cnf /etc/mysql/my.cnf

COPY init_db.sh /usr/local/bin/init_db.sh
RUN chmod +x /usr/local/bin/init_db.sh

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN chown -R mysql:mysql /var/lib/mysql
RUN chown -R mysql:mysql /var/log/

EXPOSE 3306

ENV MYSQL_ROOT_PASSWORD=password

# ENTRYPOINT [ "/entrypoint.sh" ]
