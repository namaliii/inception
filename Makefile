SRC_DIR := srcs
DATA_DIR := /home/anamieta/data
DB_DATA := $(DATA_DIR)/mariadb
WP_DATA := $(DATA_DIR)/wordpress

ENV_FILE := $(SRC_DIR)/.env

build:
	@docker-compose -f $(SRC_DIR)/docker-compose.yml --env-file $(ENV_FILE) build

up:
	@docker-compose -f $(SRC_DIR)/docker-compose.yml --env-file $(ENV_FILE) up -d --force-recreate --build

down:
	@docker-compose -f $(SRC_DIR)/docker-compose.yml down

start:
	@docker-compose -f $(SRC_DIR)/docker-compose.yml start

stop:
	@docker-compose -f $(SRC_DIR)/docker-compose.yml stop

clean:
	@docker stop $$(docker ps -qa) || true
	@docker rm $$(docker ps -qa) || true
	@docker rmi -f $$(docker images -qa) || true
	@docker volume rm $$(docker volume ls -q) || true
	@docker network rm $$(docker network ls -q) || true
	rm -rf $(DB_DATA)/* || true
	rm -rf $(WP_DATA)/* || true

extra:
	@docker volume rm srcs_mariadb_data srcs_wordpress_files || true

prune: clean
	@docker system prune -a --volumes -f

logs:
	docker-compose -f $(SRC_DIR)/docker-compose.yml logs -f

re: clean up
