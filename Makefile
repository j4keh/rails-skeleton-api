all: build up ps
reset: downv build up db/reset ps

ps:
	docker compose ps
up:
	docker compose up -d
build:
	docker compose build
downv:
	docker compose down -v --remove-orphans
restart:
	docker compose restart
api/login:
	docker-compose exec api bash
db/reset:
	docker-compose exec api bundle exec rails db:migrate:reset
	docker-compose exec api bundle exec rails db:seed
