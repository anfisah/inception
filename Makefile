include srcs/.env 

NAME		=	inception

COMPOSE		=	cd srcs && docker-compose -p $(NAME)

RM			=	rm -rf

MAKE_DIR	=	mkdir -p

CHMOD		=	chmod -R 777

DATA		= 	/home/ccoto/data

all : .up

folders:
	sudo mkdir -p $(DATA)
	sudo mkdir -p $(DATA)/mariadb
	sudo mkdir -p $(DATA)/wordpress

build:
	$(COMPOSE) build

.up:	clean folders
	$(COMPOSE) up -d --build
ifeq ("$(wildcard .config-done)","")
	sudo chmod 777 /etc/hosts
	sudo echo "127.0.0.1 ccoto.42.fr" >> /etc/hosts
	touch .config-done
endif

clean:
	$(COMPOSE) stop
	 docker network prune -f

fclean:
	$(COMPOSE) down -v
	rm -rf /home/ccoto/data

re:		fclean all

prune:	fclean
	docker system prune --volumes --force --all

.PHONY: all build .up clean fclean re prune
