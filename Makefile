SRC		=	srcs/docker-compose.yml
all:
	mkdir -p ${HOME}/data/wordpress ${HOME}/data/mysql
	docker compose -f ${SRC} up --build

build:
	docker compose -f ${SRC} build --no-cache
clean:
	docker compose -f ${SRC} down -v
fclean: clean
	rm -rf ${HOME}/data


all-remove:
	docker system prune --all --volumes