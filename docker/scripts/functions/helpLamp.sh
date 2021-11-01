#!/bin/bash

textStyles

function helpLamp {

    echo -e "${UNDERLINE}Commands:${NORMAL}"
    echo -e "  ${BLUE}up${YELLOW}           Start default lamp network"
    echo -e "  ${BLUE}down${YELLOW}         Stop running lamp network"
    echo -e "  ${BLUE}restart${YELLOW}      Restart lamp network"
    echo -e "  ${BLUE}info${YELLOW}         Display PHP/MySQL versions of running lamp stack"
    echo -e "  ${BLUE}php${YELLOW}          Change running PHP version"
    echo -e "  ${BLUE}mysql${YELLOW}        Change running mysql version"
    echo -e "  ${BLUE}save${YELLOW}         Save current lamp stack as default"
    echo -e "  ${BLUE}create${YELLOW}       Create folder structure for local development"
    echo -e "  ${BLUE}provision${YELLOW}    Create vhost and domain entry on /etc/hosts"
    echo ""
    echo -e "${NC}Run ${BLUE}'lamp COMMAND --help'${NC} for more information on a command."
}

export -f helpLamp 