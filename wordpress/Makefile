all: build run

build:
	docker build -t wordpress .

exec:
	CI=$$(docker ps | awk 'NR>1 {print $$1}' | head -n 1) && docker exec -it $$CI /bin/bash

run:
	docker run -p 9000:9000 wordpress
