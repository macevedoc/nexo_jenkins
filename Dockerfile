FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install apache2 -y
COPY index.html /var/www/html/
RUN /etc/init.d/apache2 start
EXPOSE 80
