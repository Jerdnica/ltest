FROM php:7.2.4-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev
RUN pecl install mcrypt-1.0.2
RUN docker-php-ext-enable mcrypt
RUN apt-get install -y mysql-client libmagickwand-dev --no-install-recommends \
    && docker-php-ext-install pdo_mysql
