docker network create app-network
docker run --hostname app-mysql --name app-mysql --network-alias app-mysql \
  --network app-network -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_ONETIME_PASSWORD=root -p 4406:3306 -d mariadb:latest

# mysql -h localhost --protocol tcp -P 4406 -uroot -p


# https://www.baeldung.com/spring-boot-hibernate