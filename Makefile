PATHS :=	/home/juan-ant/data/wordpress \
			/home/juan-ant/data/wordpress

re: fclean all

all: build up

build: $(PATHS)
	cd srcs
	docker-compose build

$(PATHS):
	mkdir -p $(PATHS)

up:
	cd srcs
	docker-compose up -d

down:
	cd srcs
	docker-compose down

clean: down
	cd srcs
	docker system prune -a

fclean: clean
	rm -rf $(PATHS)

.PHONY: clean down up re all