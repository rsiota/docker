#!/bin/bash

source "${BASE_PATH}/functions/networkLampConnectContainers.sh"

function phpContainerStart {

	cd ../../docker/php$1
	docker-compose up -d
	networkLampConnectContainers php$1

}

export -f phpContainerStart 