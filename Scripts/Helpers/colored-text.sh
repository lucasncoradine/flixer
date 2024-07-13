# - Colored Text
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
MAGENTA='\e[35m'
CYAN='\e[36m'
CLEAR='\e[0m'

# Prints a colored text
function print_red() {
    printf "${RED}$1${CLEAR}"
}

function print_green() {
    printf "${GREEN}$1${CLEAR}"
}

function print_yellow() {
    printf "${YELLOW}$1${CLEAR}"
}

function print_blue() {
    printf "${BLUE}$1${CLEAR}"
}

function print_magenta() {
    printf "${MAGENTA}$1${CLEAR}"
}

function print_cyan() {
    printf "${CYAN}$1${CLEAR}"
}


# Sets all next outputs to desired color
function set_output_clear() {
    printf "${CLEAR}"
}

function set_output_yellow() {
    printf "${YELLOW}"
}