#!/bin/sh
envsubst '$BACKEND1 $BACKEND2' </etc/nginx/nginx.conf.template >/etc/nginx/nginx.conf
envsubst '$PORT $BACKEND1 $BACKEND2' </etc/nginx/sites-available/default.template >/etc/nginx/sites-enabled/default
exec nginx -g 'daemon off;'
