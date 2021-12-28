FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server -y

COPY ./tools ./
COPY ./conf ./
COPY ./conf/50-server.cnf etc/mysql/mariadb.conf.d/

ARG SQL_NAME
ARG SQL_USER
ARG SQL_PASS
ARG SQL_HOST

RUN sh config.sh

EXPOSE 3306

ENTRYPOINT sh start.sh
