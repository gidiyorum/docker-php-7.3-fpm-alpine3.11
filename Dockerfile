
FROM php:7.3-fpm-alpine3.11

COPY --from=composer:1.9.3 /usr/bin/composer /usr/bin/composer

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/
RUN install-php-extensions zip pdo_pgsql mongodb gettext

RUN apk add gettext
