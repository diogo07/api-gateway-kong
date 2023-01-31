docker-compose build kong
docker-compose up -d kong-db
docker-compose run --rm kong kong migrations bootstrap
docker-compose run --rm kong kong migrations up
docker-compose up -d kong
docker-compose ps
docker-compose up -d konga
sleep 1m
docker-compose up -d keycloak-db
docker-compose up -d keycloak
docker-compose ps