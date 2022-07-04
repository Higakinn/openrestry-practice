FROM openresty/openresty:alpine

COPY ./conf/ /etc/nginx/conf.d/

COPY ./conf/ /usr/local/openresty/nginx/