#!/bin/bash

source "${SCRIPTS_PATH}/functions/networkLampCreate.sh"
source "${SCRIPTS_PATH}/functions/mysqlContainerStart.sh"
source "${SCRIPTS_PATH}/functions/phpContainerStart.sh"

textStyles

function lampUp {

    echo -e "Pruning unused containers..."
    docker container prune --force
    networkLampCreate 
    mysqlContainerStart
    phpContainerStart 74 

}

export -f lampUp 