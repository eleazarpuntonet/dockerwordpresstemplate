#!/bin/bash
set -e

# Set ownership and permissions for WordPress files
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Start php-fpm in the background and redirect logs to stdout and stderr
php-fpm > /proc/1/fd/1 2>/proc/1/fd/2 &

# Keep script in the foreground
tail -f /dev/null