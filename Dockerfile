FROM php:8.2-apache

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libzip-dev

# install extensions
RUN docker-php-ext-install pdo pdo_sqlite zip

# enable apache rewrite
RUN a2enmod rewrite

# install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

COPY . /var/www/html

RUN composer install --no-dev --optimize-autoloader

# IMPORTANT (create database folder + file)
RUN mkdir -p /var/www/html/database
RUN touch /var/www/html/database/database.sqlite

# permissions
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 775 storage bootstrap/cache database

# run migrations
RUN php artisan migrate --force

# serve public folder
RUN sed -i 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/000-default.conf