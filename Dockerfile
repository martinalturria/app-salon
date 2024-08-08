FROM php:8.0-apache

# Copiar los archivos de la aplicación al directorio del servidor web
COPY . /var/www/html

# Habilitar mod_rewrite para Apache
RUN a2enmod rewrite

# Exponer el puerto 80
EXPOSE 80

# Usar apache2-foreground para arrancar Apache
CMD ["apache2-foreground"]
