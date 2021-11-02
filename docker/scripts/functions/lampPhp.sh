#!/bin/bash

source "${BASE_PATH}/functions/removeRunningContainersApartMysql.sh"
source "${BASE_PATH}/functions/phpContainerStart.sh"

function lampPhp {
    removeRunningContainersApartMysql
    phpContainerStart $1
}

export -f lampPhp