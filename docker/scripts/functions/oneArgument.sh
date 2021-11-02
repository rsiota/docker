#!/bin/bash

source "${BASE_PATH}/functions/lampUp.sh"
source "${BASE_PATH}/functions/lampDown.sh"
source "${BASE_PATH}/functions/lampRestart.sh"
source "${BASE_PATH}/functions/lampInfo.sh"
source "${BASE_PATH}/functions/lampPhp.sh"
source "${BASE_PATH}/functions/lampMysql.sh"
source "${BASE_PATH}/functions/lampSave.sh"
source "${BASE_PATH}/functions/lampCreate.sh"
source "${BASE_PATH}/functions/lampProvision.sh"

function oneArgument {

    case $1 in
        up)
            lampUp 
            ;;
        down)
            lampDown
            ;;
        restart)
            lampRestart
            ;;
        info)
            lampInfo
            ;;
        mysql)
            lampMysql
            ;;
        save)
            lampSave
            ;;
        create)
            lampCreate
            ;;
        provision)
            lampProvision
            ;;
        *)
            echo "Sorry, that's not a lamp command"
            ;;
    esac

}

export -f oneArgument 