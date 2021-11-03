#!/bin/bash

textStyles

function helpLamp {

    printf "${UNDERLINE}Commands:${NORMAL}\n"
    printf "  ${BLUE}up${YELLOW}           Start default lamp network\n"
    printf "  ${BLUE}down${YELLOW}         Stop running lamp network\n"
    printf "  ${BLUE}restart${YELLOW}      Restart lamp network\n"
    printf "  ${BLUE}info${YELLOW}         Display PHP/MySQL versions of running lamp stack\n"
    printf "  ${BLUE}php${YELLOW}          Change running PHP version\n"
    printf "  ${BLUE}mysql${YELLOW}        Change running mysql version\n"
    printf "  ${BLUE}save${YELLOW}         Save current lamp stack as default\n"
    printf "  ${BLUE}create${YELLOW}       Create folder structure for local development\n"
    printf "  ${BLUE}provision${YELLOW}    Create vhost and domain entry on /etc/hosts\n"
    echo ""
    printf "${NC}Run ${BLUE}'lamp COMMAND --help'${NC} for more information on a command.\n"
}

export -f helpLamp 