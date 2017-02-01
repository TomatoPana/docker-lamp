FROM php:7.0.1-apache

COPY schema/php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y mysql-client libmysqlclient-dev \ 
      && docker-php-ext-install mysqli

