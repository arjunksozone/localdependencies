#!bin/sh
export COMPOSE_FILE=redis/docker-compose.yml:minio/docker-compose.yml:nats/docker-compose.yml:mongodb/docker-compose.yml
docker-compose up -d
sh ./kong/kong.sh
cd postgres
docker-compose up -d
cd ..
cd vault-consul-docker
docker-compose up -d
cd ..