# Dockerfile NGINX
FROM nginx:latest


# Eliminar el archivo de configuración predeterminado de Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Agregar nuestro archivo de configuración de Nginx
COPY ./server/nginx.conf /etc/nginx/conf.d/

# Create log directory and set permissions
RUN mkdir -p /var/log/nginx && \
    touch /var/log/nginx/access.log && \
    touch /var/log/nginx/error.log && \
    chmod -R 777 /var/log/nginx
