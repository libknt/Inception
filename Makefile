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

ps:
	docker compose -f ${SRC} ps

v:
	docker volume ls

all-remove:
	docker system prune --all --volumes

logs:
	docker compose -f ${SRC} logs

restart:
	docker compose -f ${SRC} restart

stop:
	docker compose -f ${SRC} stop

start:
	docker compose -f ${SRC} start

.PHONY: all build clean fclean ps v all-remove logs restart stop start