#!/bin/bash

docker-compose down -v

sudo rm -rf consul
sudo rm api-gateway/conf.d/api_gateway.conf
sudo rm -rf consul-template/data