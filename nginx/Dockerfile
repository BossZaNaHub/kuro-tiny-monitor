FROM nginx:latest

COPY ./out /var/www/out
# Set permissions for the directory
RUN chown -R www-data:www-data /var/www/out
RUN chmod -R 755 /var/www/out

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]