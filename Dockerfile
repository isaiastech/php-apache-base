FROM php:8.3-apache

# Instala extensões do PHP (MySQL, PDO, etc)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Ativa o módulo rewrite do Apache
RUN a2enmod rewrite

# Define o diretório de trabalho padrão
WORKDIR /var/www/html
