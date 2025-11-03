FROM debian:bullseye

RUN apt update

RUN apt install wget -y && apt install tar -y

RUN apt install -y php-fpm php-mysql

RUN mkdir -p /var/www/html/

RUN wget -O /tmp/wordpress_todelete.tar.gz https://wordpress.org/latest.tar.gz

RUN tar -xzf /tmp/wordpress_todelete.tar.gz -C /var/www/html && rm /tmp/wordpress.tar.gz

RUN apt install -y mariadb-client

CMD [ "nginx", "-g", "daemon off;" ]