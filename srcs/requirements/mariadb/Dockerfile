FROM debian:bullseye
RUN	apt-get update
RUN	apt-get install -y mariadb-server && apt-get clean


COPY ./tools/docker-entrypoint.sh /usr/local/bin/
RUN	chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD	["mariadbd"]
