FROM php:7.4-fpm

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y libpq-dev && \
    docker-php-ext-install pgsql
