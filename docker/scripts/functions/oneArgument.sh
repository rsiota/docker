#!/bin/bash

source "${SCRIPTS_PATH}/functions/lampUp.sh"
source "${SCRIPTS_PATH}/functions/lampDown.sh"
source "${SCRIPTS_PATH}/functions/lampRestart.sh"
source "${SCRIPTS_PATH}/functions/lampInfo.sh"
source "${SCRIPTS_PATH}/functions/lampPhp.sh"
source "${SCRIPTS_PATH}/functions/lampMysql.sh"
source "${SCRIPTS_PATH}/functions/lampSave.sh"
source "${SCRIPTS_PATH}/functions/lampCreate.sh"
source "${SCRIPTS_PATH}/functions/lampProvision.sh"

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