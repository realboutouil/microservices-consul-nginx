#!/bin/bash

./clean.sh

mvn clean verify

docker-compose up -d --build

docker exec api-gateway nginx -s reload
