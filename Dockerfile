FROM php:8.3-apache

# Instala extensões PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Ativa o módulo rewrite
RUN a2enmod rewrite

# Permissões da pasta
RUN chown -R www-data:www-data /var/www/html

# Define diretório padrão
WORKDIR /var/www/html
