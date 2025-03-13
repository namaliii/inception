#!/bin/bash

service mysql start

if [ ! -d "/var/lib/mysql/mysql" ]; then
  mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
fi

mysql < /docker-entrypoint-initdb.d/init.sql

exec mysqld
