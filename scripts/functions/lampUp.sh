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
    phpContainerStart 7.4 

}

export -f lampUp 