#!/bin/bash

function checkRunningPhpContainer {
    docker container ls -a --format "{{.Names}}" --filter name=php*
}

export -f checkRunningPhpContainer