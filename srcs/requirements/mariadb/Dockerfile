FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt install mariadb-server -y

EXPOSE 3306

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/script.sh /

RUN chmod 777 script.sh

CMD [ "bash", "script.sh" ]