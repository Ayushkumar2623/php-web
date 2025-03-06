FROM php:8.1-fpm
WORKDIR /app
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli
COPY . .
CMD ["php", "-S", "0.0.0.0:9000", "-t", "/app"]
