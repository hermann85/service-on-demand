FROM php:8.1-apache

ADD index.php /var/www/html

RUN apt-get update && \
    docker-php-ext-install mysqli pdo pdo_mysql
	
