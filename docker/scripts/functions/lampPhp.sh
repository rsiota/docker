#!/bin/bash

source "functions/removeRunningContainersApartMysql.sh"
source "functions/phpContainerStart.sh"

function lampPhp {
    removeRunningContainersApartMysql
    phpContainerStart $1
}

export -f lampPhp