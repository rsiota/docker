#!/bin/bash

source "functions/lampUp.sh"
source "functions/lampDown.sh"
source "functions/lampRestart.sh"
source "functions/lampInfo.sh"
source "functions/lampPhp.sh"
source "functions/lampMysql.sh"
source "functions/lampSave.sh"
source "functions/lampCreate.sh"
source "functions/lampProvision.sh"

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