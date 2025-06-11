FROM php:8.2-apache

# Instala extensões necessárias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Ativa mod_rewrite do Apache (útil para .htaccess e rotas amigáveis)
RUN a2enmod rewrite

# Permissões (ajuste se necessário)
RUN chown -R www-data:www-data /var/www/html
