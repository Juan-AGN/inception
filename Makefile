PATHS :=	/home/juan-ant/data/wordpress \
			/home/juan-ant/data/database

all: build up

re: fclean all

build: $(PATHS)
	cd srcs && docker-compose build

$(PATHS):
	mkdir -p $(PATHS)

up:
	cd srcs && docker-compose up -d

down:
	cd srcs && docker-compose down

clean:
	cd srcs && docker-compose down --remove-orphans --rmi all

fclean: clean
	docker volume rm db-data wp-data

prune:
	docker system prune -a

vprune:
	docker volume prune -a

.PHONY: clean down up re all