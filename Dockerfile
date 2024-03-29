FROM php:8.3-apache
LABEL authors="mtsybulskyi"
# Install dependencies
RUN apt-get update && \
    apt-get install -y libzip-dev && \
    docker-php-ext-install mysqli pdo_mysql zip
COPY src/ /var/www/html/
#RUN chmod 666 /var/www/html/hesk_settings.inc.php && \
#    chmod -R 777 /var/www/html/attachments/ && \
#    chmod -R 666 /var/www/html/cache/
RUN chown www-data:www-data /var/www/html/hesk_settings.inc.php
RUN chmod 666 /var/www/html/hesk_settings.inc.php
RUN chmod -R 777 /var/www/html/attachments/
RUN chown www-data:www-data /var/www/html/cache/
RUN chmod -R 666 /var/www/html/cache/
#EXPOSE 5549
EXPOSE 3306
