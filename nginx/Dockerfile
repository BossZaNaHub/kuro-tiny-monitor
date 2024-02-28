FROM nginx:latest

USER www-data

WORKDIR /var/www/out

COPY ./out .
# Set permissions for the directory
RUN chown -R www-data:www-data /var/www/out
RUN chmod -R 755 /var/www/out

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]