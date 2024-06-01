up:
	mkdir -p ~/data/mysql
	mkdir -p ~/data/wordpress
	docker compose up --build

rebuild:
	docker compose up --build
	
down:
	sudo rm -rf ~/data/mysql
	sudo rm -rf ~/data/wordpress
	docker compose down -v

remove:
	docker compose down --rmi all

r:
	docker ps -a | awk '{ print $1 }' | head -n 2 | tail -n 1 | xargs docker rm; 
m:
	docker images | awk '{ print $3 }' |  head -n 2 | tail -n 1 | xargs docker image rm;