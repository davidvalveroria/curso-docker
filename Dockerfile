FROM ubuntu:12.04

RUN apt-get update && apt-get install -y nginx

VOLUME /usr/share/nginx/www/

ADD web /usr/share/nginx/www/

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

EXPOSE 80