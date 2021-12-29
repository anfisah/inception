# inception

:computer: Inception is an individual project at 42.

:question: A small infrastructure composed of different services under specific rules using docker-compose.
Things that must be set up:

    A Docker container that contains NGINX with TLSv1.2 or TLSv1.3
    A Docker container that contains WordPress + php-fpm
    A Docker container that contains MariaDB
    A volume that contains WordPress database
    A second volume that contains WordPress website files
    docker-networks between these containers
    
![image](https://user-images.githubusercontent.com/71769427/147575722-9f0fe636-302d-4af1-bb7f-a27f8829108a.png)

:page_with_curl: You will find the subject of the project at the root of the repository.

:calendar: Submitted in november 2021
