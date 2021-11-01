#!/bin/bash

source "functions/lampPhp.sh"

function twoArguments {

    case $1 in
        php)
            lampPhp $2
            ;;
        *)
            echo "Sorry, that's not a lamp command"
            ;;
    esac

}

export -f twoArguments 