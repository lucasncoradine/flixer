#!/bin/bash

source ./Scripts/Helpers/colored-text.sh

# Helper function
function install_gem() {
    printf "Installing $(print_green $1)\n"

    IS_INSTALLED=$(gem list -i "^$1$")
    if $IS_INSTALLED
    then
        print_yellow "Already installed \n"
    else
        set_output_yellow
        gem install $1
        set_output_clear
    fi
}
# 

printf "Installing dependencies... 📦\n\n"

# Install xcpretty
install_gem xcpretty