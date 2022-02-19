#!/bin/bash

source "${SCRIPTS_PATH}/functions/networkLampConnectContainers.sh"

function mysqlContainerStart {

    cd ${DOCKER_PATH}/mysql$1
    docker-compose up -d
    networkLampConnectContainers mysql

}

export -f mysqlContainerStart 
