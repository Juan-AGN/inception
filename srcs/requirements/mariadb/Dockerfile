FROM debian:bullseye

ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=wordpressuser
ENV MYSQL_PASSWORD=wordpresspassword

RUN apt update -y && apt upgrade -y
RUN apt install mariadb-server -y

EXPOSE 3306

COPY conf/mariadb.cnf /etc/mysql/mariadb.cnf

COPY tools/script.sh /

RUN chmod 777 script.sh

CMD [ "bash", "script.sh" ]