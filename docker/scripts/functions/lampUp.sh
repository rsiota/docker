#!/bin/bash

source "functions/networkLampCreate.sh"
source "functions/mysqlContainerStart.sh"
source "functions/phpContainerStart.sh"

textStyles

function lampUp {

    echo -e "${BLUE}Pruning unused containers..."
    docker container prune --force
    networkLampCreate 
    mysqlContainerStart
    phpContainerStart 74 

}

export -f lampUp 