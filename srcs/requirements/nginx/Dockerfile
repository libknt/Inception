FROM	debian:bullseye
RUN	apt update &&  apt upgrade -y
RUN	apt install -y openssl nginx
COPY	./conf/default.conf /etc/nginx/conf.d/default.conf
CMD	["/usr/sbin/nginx", "-g", "daemon off;"]

# FROM debian:bullseye

# RUN apt-get update -y && \
#     apt-get install -y nginx openssl

# COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

# RUN mkdir -p /etc/nginx/ssl && \
#     openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/"

# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

# # https://qiita.com/ohakutsu/items/814825a76b5299a96661
