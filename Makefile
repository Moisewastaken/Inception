YML_PATH=srcs/docker-compose.yml
DATA_PATH=/home/mcochin/data

all: build

build:
	docker compose -f $(YML_PATH) up --build

stop:
	docker compose -f $(YML_PATH) stop

start:
	docker compose -f $(YML_PATH) start

restart: clean build

clean:
	docker compose -f $(YML_PATH) down -v

fclean:
	sudo rm -rf $(DATA_PATH)/*/*
	docker system prune -af
