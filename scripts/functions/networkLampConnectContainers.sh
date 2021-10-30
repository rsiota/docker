#!/bin/bash

textStyles

function networkLampConnectContainers {

	NETWORK="lamp"
	#Find out the networks that the container is connected to
	CONTAINER_NETWORKS=$(docker inspect $1 --format='{{range $k,$v := .NetworkSettings.Networks}} {{$k}} {{end}}')

	#Check if the php container is already attached to the lamp network
	if [[ "$CONTAINER_NETWORKS" != *"$NETWORK"* ]];
	then
		echo -e "${BLUE}Connecting container to lamp network..."
		docker network connect lamp $1
	fi

}

export -f networkLampConnectContainers 