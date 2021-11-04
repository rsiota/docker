#!/bin/bash

source "${SCRIPTS_PATH}/functions/textStyles.sh"
source "${SCRIPTS_PATH}/functions/checkRunningPhpContainer.sh"
source "${SCRIPTS_PATH}/functions/checkRunningMysqlContainer.sh"
source "${SCRIPTS_PATH}/functions/phpContainerStart.sh"
source "${SCRIPTS_PATH}/functions/mysqlContainerStart.sh"

function lampRestart {

    textStyles

    PHP_CONTAINER=$(checkRunningPhpContainer)
    PHP_VERSION=${PHP_CONTAINER:3:2}

    MYSQL_CONTAINER=$(checkRunningMysqlContainer)

    printf "${BLUE}Restarting PHP container "
    docker kill $PHP_CONTAINER
    phpContainerStart $PHP_VERSION
    printf "Restarting MySQL container "
    docker kill $MYSQL_CONTAINER
    mysqlContainerStart $MYSQL_CONTAINER

}

export -f lampRestart