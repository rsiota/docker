#!/bin/bash

function networkLampCreate {

    NETWORK="lamp"
    if [ ! "$(docker network ls | grep $NETWORK)" ]; 
    then
        echo "Creating lamp network..."
        docker network create lamp
    fi

}

export -f networkLampCreate 