FROM debian:bullseye
RUN	apt-get update
RUN	apt-get install -y mariadb-server && apt-get clean


COPY ./tools/docker-entrypoint.sh /usr/local/bin/
COPY ./tools/healthcheck.sh /usr/local/bin/
RUN	chmod +x /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/healthcheck.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD	["mariadbd"]
