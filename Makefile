.PHONY: start up down console logs restart destroy build

up: start ## Starts application

start: ## Start all services
	docker-compose up -d

down: ## Stops all services
	docker-compose down

console: ## Starts a web console
	docker-compose exec web sh

logs: ## Tails all logs
	docker-compose logs --tail=100 -f

restart: ## restarts everything
	docker-compose restart

destroy: ## Destroys all containers and their attached volumes
	docker-compose down -v

build: ## Builds all images
	docker-compose build