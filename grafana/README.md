### This repository service grfana monitor
- postgres
- redis

In future will update service node-exporter

## POSTGRES
add .env
DATA_SOURCE_NAME=postgresql://username:password@your_instance:your_external_port/your_database?sslmode=disable
if you wnat to set credentials POSTGRESQL
go to Folder `postgres/docker-compose.yml` see db service will found `environment`

<code>
    environment:
    - POSTGRES_USER=xx
    - POSTGRES_PASSWORD=xx
    - POSTGRES_DB=xx
</code>

## REDIS
add .env
REDIS_ADDR=your_instance:your_port
REDIS_USER=xx
REDIS_PASSWORD=xx

if you wnat to set credentials POSTGRESQL
go to Folder `redis/docker-compose.yml` see db service will found `environment`

<code>
- REDIS_REPLICATION_MODE=master
- REDIS_PASSWORD=admin
</code>

### IMPORTANT
to exporter prometheus your service please add more service scrape_config
see in `prometheus/config.yml`

<code>
global:
  scrape_interval: 15s
  evaluation_interval: 15s

scrape_configs:
  - job_name: prometheus
    static_configs:
      - targets: ['localhost:9090']

  - job_name: redis-exporter
    static_configs:
      - targets: ['redis-exporter:9121']

  - job_name: postgres-exporter
    static_configs:
      - targets: ['postgres-exporter:9187']
</code>