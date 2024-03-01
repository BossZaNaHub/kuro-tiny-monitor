FROM nginx:latest

USER root

USER www-data

WORKDIR /var/www/out

# Copy
COPY ./out .

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]