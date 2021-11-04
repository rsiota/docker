#!/bin/bash

textStyles

function removeRunningContainersApartMysql {

	CONTAINERS=$(docker ps -a | grep -v "mysql" | awk 'NR>1 {print $1}')
	if [[ "$CONTAINERS" != "" ]];
	then
		echo -e "${BLUE}Removing running php container..."
		docker rm --force $CONTAINERS
	fi

}

export -f removeRunningContainersApartMysql 