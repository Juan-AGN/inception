/bin/bash

mkdir -p /var/lib/mysql

chown -R mysql:mysql /var/lib/mysql

apt-get update && apt-get install -y mariadb-server mariadb-client
