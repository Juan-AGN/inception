#!/bin/sh

touch init.sql

mkdir -p /run/mysqld
mkdir -p /var/run/mysqld

echo "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};" >> init.sql

echo "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';" >> init.sql

echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';" >> init.sql

echo "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%';" >> init.sql

echo "FLUSH PRIVILEGES;" >> init.sql

chmod 777 init.sql
mv init.sql /run/mysqld/init.sql
chown -R mysql:root /var/run/mysqld
mariadbd --init-file /run/mysqld/init.sql