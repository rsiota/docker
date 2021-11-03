#!/bin/bash

source "${SCRIPTS_PATH}/functions/removeRunningContainersApartMysql.sh"
source "${SCRIPTS_PATH}/functions/phpContainerStart.sh"

function lampPhp {
    removeRunningContainersApartMysql
    phpContainerStart $1
}

export -f lampPhp