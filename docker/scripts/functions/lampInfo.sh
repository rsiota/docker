#!/bin/bash

source "${SCRIPTS_PATH}/functions/checkRunningPhpContainer.sh"
source "${SCRIPTS_PATH}/functions/checkRunningMysqlContainer.sh"

function lampInfo {

    PHP_CONTAINER=$(checkRunningPhpContainer)
    PHP_VERSION=${PHP_CONTAINER:3:2}
    printf "PHP version: $PHP_VERSION\n"
    MYSQL_CONTAINER=$(checkRunningMysqlContainer)
    printf "MySQL version: 5.6"
}

export -f lampInfo