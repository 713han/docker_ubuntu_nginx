FROM ubuntu:latest

MAINTAINER 713han@gmail.com

ARG DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get update && apt-get install -y nginx && \
  rm /etc/nginx/sites-available/* /etc/nginx/sites-enabled/default && \
  mkdir /home/www

EXPOSE 80 443

CMD \
  service nginx start && \
tail -f /var/log/nginx/error.log