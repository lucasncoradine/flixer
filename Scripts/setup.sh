#!/bin/bash

source ./Scripts/Helpers/colored-text.sh

# Helper function
function print_installing() {
    if $1 == true
    then
        print_green "$2"
        print_yellow " is already installed. \n" 
    else
        printf "Installing $(print_green $2)...\n"
    fi
}

function install_gem() {
    IS_INSTALLED=$(gem list -i "$1")
    print_installing $IS_INSTALLED $1
    
    if ! $IS_INSTALLED
    then
        set_output_yellow
        gem install $1
        set_output_clear
    fi
}

function install_brew() {
    IS_INSTALLED=false

    if [[ $(brew ls $1 --versions) ]]; then
        IS_INSTALLED=true
    fi

    print_installing "$IS_INSTALLED" $1
    
    if ! $IS_INSTALLED
    then
        set_output_yellow
        brew install $1
        set_output_clear
    fi
}
# 

printf "Installing dependencies... 📦\n\n"

# Install xcpretty
install_gem xcpretty

# Install xcodegen
install_brew xcodegen