FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/

RUN a2enmod rewrite

WORKDIR /var/www/html/
