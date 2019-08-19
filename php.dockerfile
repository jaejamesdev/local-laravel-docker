FROM php:7.3-fpm #You can customise your PHP version here

RUN apt-get update && apt-get install -y libmcrypt-dev default-mysql-client \
    && pecl install mcrypt-1.0.2 \
    && docker-php-ext-enable mcrypt \
    && docker-php-ext-install pdo_mysql

WORKDIR /var/www

