FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install wget -y && apt install tar -y

RUN apt install -y php-fpm php-mysql

RUN mkdir -p /var/www/html

RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz

RUN tar -xzf /tmp/wordpress.tar.gz -C /var/www/html && rm /tmp/wordpress.tar.gz

RUN apt install -y mariadb-client

EXPOSE 9000

COPY tools/script.sh /

CMD [ "sh", "/script.sh" ]