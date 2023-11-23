FROM php:8.0-apache
         

RUN apt update && apt install -y \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli 
 

COPY . /var/www/html/
