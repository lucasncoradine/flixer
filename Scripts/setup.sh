#!/bin/bash

GREEN='\033[32m'
YELLOW='\033[33m'
CLEAR='\033[0m'

# set -x
# Helper functions
function install_gem() {
    printf "Installing ${GREEN}$1${CLEAR}\n"

    IS_INSTALLED=$(gem list -i "^$1$")
    if $IS_INSTALLED
    then
        printf "${YELLOW}Already installed${CLEAR}\n"
    else
        printf "${YELLOW}"
        gem install $1
        printf "${CLEAR}"
    fi
}
# 

printf "Installing dependencies... 📦\n"

# Install xcpretty
install_gem xcpretty