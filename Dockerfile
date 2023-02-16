FROM ubuntu:20.04

ENV TZ=America/Bogota

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install apache2
RUN apt-get -y install python3
RUN apt-get -y install systemctl

RUN systemctl start apache2

RUN echo "Daniel S mi primer Dockers" > /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]