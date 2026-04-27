FROM php:8.2-apache

# Install required PHP extension
RUN docker-php-ext-install mysqli

# Copy application code (but NOT .env if you exclude it)
COPY . /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 for the web server
EXPOSE 80