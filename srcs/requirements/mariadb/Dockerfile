FROM debian:bullseye

# Install MariaDB and required tools
RUN apt update && apt upgrade -y && apt install -y \
    mariadb-server \
    curl \
    gettext

# Copy configuration and scripts
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/

RUN mkdir -p /docker-entrypoint-initdb.d

COPY init.sql /docker-entrypoint-initdb.d/init.sql
COPY script.sh .

# Set permissions and make script executable
RUN mkdir -p /run/mysqld && chmod +x script.sh

# Set environment variables for the DB initialization
ENV DB_NAME=my_database
ENV DB_USER=my_user
ENV DB_PASS=my_password

# Set entrypoint for MariaDB to start correctly
ENTRYPOINT ["./script.sh"]