#!/usr/bin/env bash

connectToNetwork () {
	NETWORK="lamp"
	#Find out the networks that the container is connected to
	CONTAINER_NETWORKS=$(docker inspect $1 --format='{{range $k,$v := .NetworkSettings.Networks}} {{$k}} {{end}}')

	#Check if the php container is already attached to the lamp network
	if [[ "$CONTAINER_NETWORKS" != *"$NETWORK"* ]];
	then
		echo "connecting container to lamp network..."
		docker network connect lamp $1
	fi
}

startPhp () {
	cd ~/docker/php$1
	docker-compose up -d
	connectToNetwork php$1

}

startMysql () {
  cd ~/docker/mysql5.6
  docker-compose up -d
  connectToNetwork mysql
}

if [[ "$1" == "db" ]];
then
  echo "starting mysql container"
  startMysql
else
	echo "start php container"
	startPhp $1
fi

#alias du="~/docker/scripts/du.sh"
