FROM php:7.0.1-apache

COPY schema/php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y \
      mysql-client \
      nano \
      libmysqlclient-dev libmcrypt-dev \
      vim vim-common vim-gnome \
      git \
      zip && \
      docker-php-ext-install mysqli && \
      docker-php-ext-install pdo pdo_mysql mbstring mcrypt && \
      ln -s /etc/apache2/sites-available/sites.conf /etc/apache2/sites-enabled/sites.conf && \
      a2enmod rewrite

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

