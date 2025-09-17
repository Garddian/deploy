FROM php:8.2-apache

# Installer les dépendances nécessaires à Composer
RUN apt-get update && apt-get install -y libpng-dev libonig-dev libxml2-dev zip unzip git curl libzip-dev libicu-dev libpq-dev default-mysql-client
RUN docker-php-ext-install pdo pdo_mysql zip intl gd
# Installer Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN a2enmod rewrite
#RUN php /var/www/html/install-dev/index_cli.php --domain=ps-live.ael.ovh --db_server=mysql-ps-live --db_name=prestashop-live --db_user=root --db_password=admin --prefix=ps_ --email=sebastien.godard@prestashop.com --password=AQWzsx123!


WORKDIR /var/www/html