#!/bin/bash

function checkRunningMysqlContainer {
    docker container ls -a --format "{{.Names}}" --filter name=mysql*
}

export -f checkRunningMysqlContainer