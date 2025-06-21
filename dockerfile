
FROM ubuntu:22.04

LABEL app=cbz-app

WORKDIR /var/www/html

RUN apt update
RUN apt install apache2 -y
RUN echo "<h1> Hello I am Prajakta Shinde" >/var/www/html/index.html

COPY index.html ./index.html

USER apache2

EXPOSE 80

ENTRYPOINT apache2

CMD apachectl -DFOREGROUND

