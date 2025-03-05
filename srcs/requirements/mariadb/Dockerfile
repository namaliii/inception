FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y \
    mariadb-server

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY init.sql /etc/mysql/init.sql
COPY ./init.sql /docker-entrypoint-initdb.d/
COPY script.sh .

RUN mkdir /run/mysqld && chmod +x script.sh

CMD ["./script.sh"]
