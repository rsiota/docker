#!/bin/bash

source "${SCRIPTS_PATH}/functions/networkLampConnectContainers.sh"

function phpContainerStart {

	cd ${DOCKER_PATH}/php$1
	docker-compose up -d
	networkLampConnectContainers php$1

}

export -f phpContainerStart 