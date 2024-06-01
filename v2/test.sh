while [ 1 ]; do docker ps -a | awk '{ print $1 }' | head -n 2 | tail -n 1 | xargs docker rm;  done;
while [ 1 ]; do docker images | awk '{ print $3 }' |  head -n 2 | tail -n 1 | xargs docker image rm; done;


apt-get update && apt-get upgrade -y
apt-get install -y mariadb-server gosu vim && apt-get clean

mkdir -p /run/mysqld && chmod 755 /run/mysqld /var/lib/mysql && mkdir -p /docker-entrypoint-initdb.d