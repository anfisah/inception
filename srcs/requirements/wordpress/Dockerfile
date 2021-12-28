FROM debian:buster

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN apt-get install php-fpm -y
RUN apt-get install php-mysql -y
RUN apt-get upgrade -y

ADD ./conf ./
ADD ./tools ./

ARG SQL_NAME
ARG SQL_USER
ARG SQL_PASS
ARG SQL_HOST


RUN sh config.sh

EXPOSE 9000

ENTRYPOINT sh start.sh
