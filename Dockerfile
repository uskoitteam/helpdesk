FROM php:8.3-apache
LABEL authors="mtsybulskyi"
# Install dependencies
RUN apt-get update && \
    apt-get install -y libzip-dev && \
    docker-php-ext-install mysqli pdo_mysql zip
#RUN apk update && apk add tzdata
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY src/ /var/www/html/
RUN chmod 666 hesk_settings.inc.php
RUN chmod -R 777 /attachments
RUN chmod -R 666 /cache
EXPOSE 5541
EXPOSE 3306
