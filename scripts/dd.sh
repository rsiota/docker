#!/usr/bin/env bash

if [[ "$1" == "db" ]];
then
	cd ~/docker/mysql5.6
	docker-compose down
else
	cd ~/docker/php$1
	docker-compose down
fi

#alias dd="~/docker/scripts/dd.sh"
