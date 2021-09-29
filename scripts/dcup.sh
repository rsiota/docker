#!/usr/bin/env bash

cd ~/docker/php$1
docker-compose up -d
docker network connect lamp php$1

#alias du="~/docker/scripts/dcup.sh"
