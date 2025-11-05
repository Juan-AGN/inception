#!/bin/bash

PHP_VERSION=$(php -r "echo PHP_MAJOR_VERSION . '.' . PHP_MINOR_VERSION;")

mkdir -p /run/php

chown -R www-data.www-data /var/www/html/wordpress

chmod -R 755 /var/www/html/wordpress

sed -i "s#listen = /run/php/php${PHP_VERSION}-fpm.sock#listen = 0.0.0.0:9000#g" /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf

cd /usr/local/bin

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

cd /var/www/html/wordpress

wp-cli.phar config create	--allow-root \
					--dbname=$MYSQL_DATABASE \
					--dbuser=$MYSQL_USER \
					--dbpass=$MYSQL_PASSWORD \
					--dbhost=mariadb:3306 --path='/var/www/html/wordpress'

wp-cli.phar core install --allow-root    --url=juan-ant.42.fr \
                                --title=inception \
                                --admin_user=$WORDPRESS_USER \
                                --admin_password=$WORDPRESS_PASSWORD \
                                --admin_email=$WORDPRESS_MAIL \
                                --skip-email \
                                --locale=es_ES \
			                    --path='/var/www/html/wordpress'

wp-cli.phar user create $WORDPRESS_BASIC_USER $WORDPRESS_BASIC_MAIL --role=author \
                                 --user_pass=$WORDPRESS_BASIC_PASSWORD \
                                 --allow-root

php-fpm${PHP_VERSION} -F