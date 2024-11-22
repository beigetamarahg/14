# minimal base image
FROM httpd:alpine

LABEL maintainer="beigetamarah@gmail.com"
LABEL description="Apache2 server. Serverless"

# ADD ./html/apache/ /var/www/apache
ADD ./html/blue/ /var/www/blue
# ADD ./html/red/ /var/www/red
# ADD ./sites-enabled/red.conf.template /usr/local/apache2/sites-avaliable/red.conf.template
ADD ./sites-enabled/blue.conf.template /usr/local/apache2/sites-avaliable/blue.conf.template

RUN apk add php php-apache2

RUN mkdir /usr/local/apache2/sites-enabled/
RUN mkdir /var/www-data
RUN mkdir /var/www-data/log

RUN chown -R www-data:www-data /var/www-data
RUN chown -R www-data:www-data /var/www
RUN chmod 750 -R /var/www-data

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chown -R www-data:www-data /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

COPY ./ports.conf.template /usr/local/apache2/conf/ports.conf.template
COPY ./apache2.conf /usr/local/apache2/conf/httpd.conf
RUN chown -R www-data:www-data /usr/local/apache2

# Switch to a non-root user
USER www-data

ENTRYPOINT ["/docker-entrypoint.sh"]
