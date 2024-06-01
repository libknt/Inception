FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y

# https://qiita.com/ohakutsu/items/814825a76b5299a96661
RUN apt-get install -y nginx openssl

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./conf/passwd /etc/nginx/ssl/passwd

CMD	["/usr/sbin/nginx", "-g", "daemon off;"]
