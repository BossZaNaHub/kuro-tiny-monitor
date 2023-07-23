up-service:
	@cd grafana && docker-compose up -d
	@cd prometheus && docker-compose up -d
down-service:
	@cd grafana && docker-compose down
	@cd prometheus && docker-compose down