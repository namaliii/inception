FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y \
    php-fpm \
    php-mysqli \
    curl

ARG DB_NAME
ARG DB_USER
ARG DB_PASS
ARG DB_HOST

ENV DB_NAME=${DB_NAME}
ENV DB_USER=${DB_USER}
ENV DB_PASS=${DB_PASS}
ENV DB_HOST=${DB_HOST}

COPY www.conf /etc/php/8.2/fpm/pool.d/.
COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
CMD ["script.sh"]