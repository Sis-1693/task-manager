FROM php:8.2-apache

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    curl \
    libzip-dev

RUN docker-php-ext-install pdo pdo_sqlite zip

RUN a2enmod rewrite

# install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

COPY . /var/www/html

RUN composer install --no-dev --optimize-autoloader

# create sqlite file
RUN touch database/database.sqlite

# run migrations
RUN php artisan migrate --force

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 775 storage bootstrap/cache

# serve laravel public folder
RUN sed -i 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/000-default.conf