FROM ubuntu:16.04

RUN apt update
RUN apt install apache2 -y
RUN apt clean
COPY index.html /var/www/html/
EXPOSE 80
CMD service apache2 start
