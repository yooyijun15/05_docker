#!/bin/bash

docker network create mynet

docker run -d --name postgres \
--network mynet \
-e POSTGRES_PASSWORD=password \
postgres

docker run -d --name adminer \
--network mynet \
--restart=always \
-p 8080:8080 \
adminer
