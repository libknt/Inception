FROM debian:bullseye
RUN	apt-get update && apt-get upgrade -y
RUN	apt-get install -y mariadb-server gosu && apt-get clean

RUN	mkdir -p /run/mysqld && \
	chmod 755 /run/mysqld /var/lib/mysql && \
	mkdir -p /docker-entrypoint-initdb.d
COPY	./tools/docker-my.cnf docker-my.cnf
COPY	./tools/docker-entrypoint.sh /usr/local/bin/
RUN	chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD	["mariadbd"]
