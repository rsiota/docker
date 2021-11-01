#!/bin/bash

source "functions/networkLampConnectContainers.sh"

function mysqlContainerStart {

    cd ../../docker/mysql56
    docker-compose up -d
    networkLampConnectContainers mysql

}

export -f mysqlContainerStart 