#!/bin/bash

textStyles

function lampDown {

    echo -e "${BLUE}Stopping running containers..."
    docker stop $(docker ps -a -q)
    echo "Removing running containers..."
    docker rm $(docker ps -a -q)

}

export -f lampDown