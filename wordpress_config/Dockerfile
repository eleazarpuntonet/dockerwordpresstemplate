# Dockerfile WORDPRESS
FROM wordpress:5-fpm

COPY ./wordpress_config/entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]

RUN echo "upload_max_filesize = 64M" > /usr/local/etc/php/conf.d/upload_large_images.ini \
    && echo "post_max_size = 64M" >> /usr/local/etc/php/conf.d/upload_large_images.ini