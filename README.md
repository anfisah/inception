# inception

Inception is an individual project at 42.

A small infrastructure composed of different services under specific rules using docker-compose.
Things that must be set up:

    A Docker container that contains NGINX with TLSv1.2 or TLSv1.3
    A Docker container that contains WordPress + php-fpm
    A Docker container that contains MariaDB
    A volume that contains WordPress database
    A second volume that contains WordPress website files
    docker-networks between these containers

![image](https://user-images.githubusercontent.com/71769427/147575494-6e5b42d7-057c-40b6-a5f9-98ca19352ea7.png)

You will find the subject of the project at the root of the repository.

Submitted in november 2021
