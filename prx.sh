apt update && apt -y install nginx php-fpm php-curl curl unzip && cd /var/www/html && wget https://github.com/roddsrod/web-proxy/raw/master/prx.zip && unzip prx.zip && mv default /etc/nginx/sites-available/default && mv self-signed.conf /etc/nginx/snippets/self-signed.conf && mv php.ini /etc/php/7.2/fpm/php.ini && yes "" | openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt && service nginx restart
