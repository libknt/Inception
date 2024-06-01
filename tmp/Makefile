all: build run

build:
	docker build -t inc .
	
exec:
	CI=$$(docker ps | awk 'NR>1 {print $$1}' | head -n 1) && docker exec -it $$CI /bin/bash
execweb:
	docker compose exec web /bin/bash

execdb:
	docker compose exec db /bin/bash

execwp:
	docker compose exec wordpress /bin/bash
run:
	docker run -p 80:80 inc

stop:
	docker stop $$(docker ps | awk 'NR>1 {print $$1}')

up:
	docker compose up

up-b:
	docker compose up --build

down:
	docker compose down

clean:
	sudo rm -rf ./public/*

delete:
	CI=$$(docker ps -a | awk 'NR>1 {print $$1}' | head -n 1) && docker rm $$CI
