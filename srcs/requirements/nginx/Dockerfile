FROM	debian:bullseye

RUN	apt update &&  apt upgrade -y

RUN	apt install -y openssl nginx

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["/usr/sbin/nginx"]

CMD	["-g", "daemon off;"]