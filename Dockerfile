FROM php:8.3-apache
LABEL authors="mtsybulskyi"
# Install dependencies
RUN apk update && apk add tzdata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY src/ /var/www/html/
EXPOSE 5541
EXPOSE 3306
