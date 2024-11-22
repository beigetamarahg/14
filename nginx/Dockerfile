# minimal base image
FROM nginx:alpine

LABEL maintainer="beigetamarah@gmail.com"
LABEL description="Nginx server with reverse proxy. Yandex Serverless container"

# Install image filter module
RUN apk add --no-cache nginx-mod-http-image-filter

RUN chown -R nginx:nginx /var/cache/nginx

RUN mkdir /var/run/nginx
RUN chown -R nginx:nginx /var/run/nginx

ADD ./letsencrypt/ /etc/letsencrypt

RUN chown -R nginx:nginx /etc/letsencrypt

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chown -R nginx:nginx /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ADD ./html/ /var/www/html
ADD ./sites-available/default.template /etc/nginx/sites-available/default.template
ADD ./nginx.conf.template /etc/nginx/nginx.conf.template

RUN mkdir /etc/nginx/sites-enabled

RUN chown -R nginx:nginx /etc/nginx

# Switch to a non-root user
USER nginx

# Start Nginx
# CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["/docker-entrypoint.sh"]
