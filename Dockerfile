FROM composer:2.0.12 as build
WORKDIR /app
COPY . /app
RUN composer install

FROM php:fpm-alpine3.13
EXPOSE 9000
COPY --from=build /app /var/www/html/
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN chown -R www-data:www-data /var/www/html
# RUN chmod -R 755 /var/www/html/storage