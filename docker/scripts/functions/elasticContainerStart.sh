#!/bin/bash

source "${SCRIPTS_PATH}/functions/networkLampConnectContainers.sh"

function elasticContainerStart {

    cd ${DOCKER_PATH}/elastic
    docker-compose up -d
    networkLampConnectContainers elasticsearch

}

export -f elasticContainerStart
