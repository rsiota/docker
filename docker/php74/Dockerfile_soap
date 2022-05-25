FROM php:7.4-apache
RUN apt-get update && \
    apt-get install -y libxml2-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql soap
RUN a2enmod rewrite
