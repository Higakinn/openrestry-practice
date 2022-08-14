FROM openresty/openresty:alpine-fat

RUN /usr/local/openresty/luajit/bin/luarocks install pgmoon
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-reqargs

COPY ./conf/ /etc/nginx/conf.d/

COPY ./conf/ /usr/local/openresty/nginx/