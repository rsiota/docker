#!/bin/bash

source "functions/networkLampConnectContainers.sh"

function mysqlContainerStart {

    cd ~/docker/mysql5.6
    docker-compose up -d
    networkLampConnectContainers mysql

}

export -f mysqlContainerStart 