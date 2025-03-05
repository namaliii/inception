FROM debian:latest

RUN apt-get update && apt-get install -y \
    nginx \
    openssl \
    && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/ssl/certs /etc/ssl/private

COPY cert.pem /etc/ssl/certs/cert.pem
COPY key.pem /etc/ssl/private/key.pem

CMD ["nginx", "-g", "daemon off;"]
