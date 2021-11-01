#!/bin/bash

function textStyles {

    YELLOW='\033[1;33m'
    BLUE='\033[0;34m'
    NC='\033[0m'
	BOLD=$(tput bold)
	NORMAL=$(tput sgr0)
	UNDERLINE=$(tput smul)

}

export -f textStyles