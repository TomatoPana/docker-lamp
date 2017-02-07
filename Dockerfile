FROM php:7.0.1-apache

COPY schema/php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y \
      mysql-client \
      libmysqlclient-dev \
      && docker-php-ext-install mysqli \
      && docker-php-ext-install pdo pdo_mysql mbstring

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
