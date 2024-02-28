FROM nginx:latest

USER root

RUN mkdir -p /var/cache/nginx/client_temp && \
    chown -R www-data:www-data /var/cache/nginx

USER www-data

WORKDIR /var/www/out

COPY ./out .

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]