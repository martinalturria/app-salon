FROM php:8.0-apache

# Copiar los archivos de la aplicación al directorio del servidor web
COPY . /var/www/html

# Habilitar mod_rewrite para Apache
RUN a2enmod rewrite

# Modificar la configuración de Apache para usar la variable PORT
RUN echo 'Listen ${PORT:-80}' > /etc/apache2/ports.conf

# Exponer el puerto (esto es más una documentación, Docker usará cualquier puerto)
EXPOSE 80

CMD ["apache2-foreground"]
